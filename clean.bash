#!/bin/bash
set -euo pipefail

# Manage Relative Paths to Script Dir
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Global Setup
source "${SCRIPT_DIR}/cfg/restic.env"

echo "------------------------------"
echo "Restic Forget Keeping Last Snapshot"

restic forget --keep-last 1 --prune

echo "------------------------------"
echo "Restic Show Snapshots"
restic snapshots

echo "------------------------------"
echo "Restic Show Stats"
restic stats

echo "------------------------------"
echo "Bash Restic Clean Script Has Finished"
