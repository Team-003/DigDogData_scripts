#!/bin/bash


backup_dir="/home/gis-survey/GIS-Backup/"

# create backup directory if it doesn't exist

if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# loop through all user directories in /home
for user_dir in /home/*; do
    if [ -d $user_dir ]; then
# get username from directory name
    username=$(basename "$user_dir ")

# create a tar archive of users home directory
tar -czf "$backup_dir/$username.tar.gz" "$user_dir"

# echo backup complete
echo "$username Backup Complete"
fi
done

echo "All users backups completed"
