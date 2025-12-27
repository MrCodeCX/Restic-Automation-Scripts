BACKUP_ROOT="$HOME"

# General Exclude Patterns
declare -a BACKUP_GENERAL_EXCL_PATTERNS=(
    ".git"
)

# The backup path can be multiple paths separate by spaces
declare -A BACKUP_CONFIG=(
    # ["tag"]="path|excl_1:excl_2..."
    ["ai_dev"]="mrcode/ai_dev|mrcode/ai_dev/pytorch_ws/datasets"
    ["embedded"]="mrcode/embedded|build"
    ["robotics"]="mrcode/robotics|build"
    ["software"]="mrcode/software|py_env"
    ["research"]="mrcode/research"
)