#!/bin/bash
set -euo pipefail

# Global Setup
source cfg/restic.env
source cfg/restore_cfg.bash

for restore_tag in "${RESTORE_CONFIG[@]}"; do

    # Resti Restore
    echo "------------------------------"
    echo "Restic Restore $restore_tag"
    restic restore latest --tag "$restore_tag" --target "$RESTORE_TARGET"

done

echo "------------------------------"
echo "Bash Restic Restore Script Has Finished"