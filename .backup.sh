mysqldump -u root -p123456 --no-create-info --skip-add-drop-table --skip-triggers --insert-ignore  elearning > backup/database.sql
git add .
git commit -m "More Backup"
git push
