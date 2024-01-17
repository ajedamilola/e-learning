# Navigate to the restore folder
cd restore

# Find the SQL file in the restore folder
sql_file=$(find . -maxdepth 1 -type f -name "*.sql" -print -quit)

# Check if a SQL file was found
if [ -n "$sql_file" ]; then
  # Restore data from the found SQL file
  mysql -u root -p123456 elearning < "$sql_file"
  echo "Data restored from $sql_file"
else
  echo "No SQL file found in the restore folder"
fi
