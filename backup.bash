#!/bin/bash
set -euo pipefail

# Manage Relative Paths to Script Dir
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Global Setup
source "${SCRIPT_DIR}/cfg/restic.env"
source "${SCRIPT_DIR}/cfg/backup_cfg.bash"

cd "$BACKUP_ROOT" || exit 1

for tag in "${!BACKUP_CONFIG[@]}"; do
    # Process Data (path, excl_tmp)
    IFS='|' read -r backup_path excl_tmp <<< "${BACKUP_CONFIG[$tag]}"

    # Resti Backup
    echo "------------------------------"
    echo "Restic Backup $backup_path"

    # Process Command, Add Tag
    cmd=(restic backup $backup_path --tag "$tag ")

    # Add General Exclude Patterns
    for excl_pattern in "${BACKUP_GENERAL_EXCL_PATTERNS[@]}"; do
        cmd+=(--exclude "$excl_pattern")
    done
    
    # Add Exclude Paths
    IFS=':' read -ra excl_paths <<< "$excl_tmp"
    for excl_path in "${excl_paths[@]}"; do
        cmd+=(--exclude "$excl_path")
    done

    # Execute Command
    "${cmd[@]}"

done

echo "------------------------------"
echo "Bash Restic Backup Script Has Finished"