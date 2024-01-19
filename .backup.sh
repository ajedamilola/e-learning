# Dump table structure (schema) without data
mysqldump -u root -p123456 --no-data elearning > backup/database_schema.sql

# Dump data with insert-ignore
mysqldump -u root -p123456 --insert-ignore elearning > backup/database_data.sql

git add .
git commit -m "More Backup"
git push --force
