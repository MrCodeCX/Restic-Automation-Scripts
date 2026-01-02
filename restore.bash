#!/bin/bash
set -euo pipefail

# Manage Relative Paths to Script Dir
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Global Setup
source "${SCRIPT_DIR}/cfg/restic.env"
source "${SCRIPT_DIR}/cfg/restore_cfg.bash"

for restore_tag in "${RESTORE_CONFIG[@]}"; do

    # Resti Restore
    echo "------------------------------"
    echo "Restic Restore $restore_tag"
    restic restore latest --tag "$restore_tag" --target "$RESTORE_TARGET"

done

echo "------------------------------"
echo "Bash Restic Restore Script Has Finished"