#!/bin/bash
set -euo pipefail

# Global Setup
source cfg/restic.env

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
