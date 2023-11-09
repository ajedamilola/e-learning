const knex = require("../knexfile");

async function createTable() {
  try {
    await knex.schema.hasTable("users").then(function (exists) {
      if (!exists) {
        async function create() {
          await knex.schema
            .withSchema("e-learning")
            .createTable("users", function (table) {
              table.string("id").primary();
              table.string("userId");
              table.unique("userId");
              table.string("password");
              table.string("firstName");
              table.string("lastName");
              table.string("location");
              table.enu("gender", ["male", "female"]);
              table.date("dob", { precision: 6 });
              table.string("grade");
              table.foreign("grade").references("id").inTable("grades");
              table.string("profilePic");
              table
                .timestamp("created_at", { precision: 6 })
                .defaultTo(knex.fn.now(6));
            });
        }
        create();
      }
    });
  } catch (e) {
    console.error(e);
  }
}

async function createUser(user) {
  try {
    const id = await knex("users").insert(user);

    return id;
  } catch (err) {
    throw new Error(err);
  }
}

async function signin(user) {
  try {
    const output = await knex("users")
      .where({ userId: user.userId })
      .select(
        "id",
        "userId",
        "password",
        "firstName",
        "lastName",
        "gender",
        "grade",
        "location",
        "profilePic",
        "dob"
      );

    return output;
  } catch (err) {
    throw new Error(err);
  }
}

async function update(user) {
  try {
    const output = await knex("users")
      .where({ userId: user.userId })
      .select(
        "id",
        "userId",
        "password",
        "firstName",
        "lastName",
        "gender",
        "grade",
        "profilePic",
        "dob"
      );

    if (!output[0]) return output;
    console.log(output);
    const firstName = !user.firstName ? output.firstName : user.firstName;

    const lastName = !user.lastName ? output.lastName : user.lastName;

    const password = user.password === "" ? output.password : user.password;

    const grade = !user.grade ? output.grade : user.grade;
    const profilePic = !user.profilePic ? output.profilePic : user.profilePic;
    const response = await knex("users")
      .where("userId", "=", user.userId)
      .update({
        firstName,
        lastName,
        password,
        grade,
        profilePic,
      });
    console.log(response);
    return [{ firstName, lastName, password, grade, profilePic }];
  } catch (err) {
    throw new Error(err);
  }
}

module.exports = { createTable, createUser, signin, update };
