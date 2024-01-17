mysqldump -u root -p123456 --insert-ignore elearning > backup/database.sql
git add .
git commit -m "More Backup"
git push