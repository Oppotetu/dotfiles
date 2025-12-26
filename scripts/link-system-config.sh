#!/usr/bin/env bash
# Minimal symlink helper intended for dotbot shell tasks that need sudo.
# Usage:
#   ./dotbot_link_minimal.sh <target> <link>
# Example:
#   sudo ./link-system-config.sh "$PWD/system/keyd-default.conf" /etc/keyd/default.conf
#
# Behavior:
# - If the path at <link> is a symbolic link that already resolves to <target> (canonicalized),
#   the script does nothing and exits 0.
# - If <link> does not exist, the script creates parent directories as needed and creates a symlink.
# - If <link> is a symlink but points elsewhere, the script replaces it.
# - If <link> exists and is NOT a symlink (regular file/dir), the script will abort with a non-zero exit.
#
# Requirements: realpath, readlink, ln, rm, mkdir
set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <target> <link>" >&2
    exit 2
fi

target="$1"
link="$2"

# Require realpath
if ! command -v realpath >/dev/null 2>&1; then
    echo "ERROR: realpath is required" >&2
    exit 3
fi

# Canonical absolute path of the desired target (best-effort, -m works even if target missing)
target_canon="$(realpath -m -- "$target")"

# Helper to canonicalize what the existing link points to (if it's a symlink)
existing_canon() {
    local p="$1"
    # Prefer readlink -f if available
    if command -v readlink >/dev/null 2>&1 && readlink -f / >/dev/null 2>&1; then
        readlink -f -- "$p"
    else
        # read the symlink target (may be relative) and resolve relative to link's parent
        local stored parent
        stored="$(readlink -- "$p")" || return 1
        parent="$(dirname -- "$p")"
        realpath -m -- "$parent/$stored"
    fi
}

# If link is a symlink, check if it already points to the desired canonical target.
if [ -L "$link" ]; then
    if existing="$(existing_canon "$link")"; then
        if [ "$existing" = "$target_canon" ]; then
            # correct link already present
            echo "OK: link already correct: $link -> $existing"
            exit 0
        fi
        # symlink points elsewhere -> replace it
        rm -- "$link"
        mkdir -p -- "$(dirname -- "$link")"
        ln -s -- "$target" "$link"
        echo "Replaced symlink: $link -> $target"
        exit 0
    else
        # readlink failed for some reason; try replace
        rm -- "$link" 2>/dev/null || true
        mkdir -p -- "$(dirname -- "$link")"
        ln -s -- "$target" "$link"
        echo "Recreated symlink: $link -> $target"
        exit 0
    fi
fi

# If it exists and is not a symlink, refuse to overwrite.
if [ -e "$link" ]; then
    echo "ERROR: $link exists and is not a symlink; refusing to overwrite" >&2
    exit 1
fi

# Create parent directory and create symlink.
mkdir -p -- "$(dirname -- "$link")"
ln -s -- "$target" "$link"
echo "Created symlink: $link -> $target"
exit 0
