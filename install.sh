#!/bin/sh

set -u

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
status=0
configs='nvim ghostty karabiner fish tmux'

for config in $configs; do
    installer="$SCRIPT_DIR/$config/install.sh"
    if [ ! -f "$installer" ]; then
        printf 'skip: %s (install.sh not found)\n' "$config" >&2
        continue
    fi
    printf 'installing %s...\n' "$config"
    if ! sh "$installer"; then
        printf 'failed: %s\n' "$config" >&2
        status=1
    fi
done

exit "$status"
