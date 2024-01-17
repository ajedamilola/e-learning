mysqldump -u root -p123456 --insert-ignore --skip-add-drop-table --no-create-info elearning > backup/database.sql
git add .
git commit -m "More Backup"
git push
