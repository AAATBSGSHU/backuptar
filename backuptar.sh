#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <path_to_backup>"
    exit 1
fi

backup_path="$1"

backup_path="${backup_path%/}"

backup_name=$(basename "$backup_path")

timestamp=$(date +"%Y%m%d_%H%M%S")

backup_file="${backup_name}_backup_${timestamp}.tar"

tar -cvf "$backup_file" "$backup_path"

echo "Backup created: $backup_file"
