#!/bin/sh
set -u
source=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)/.tmux.conf
target=$HOME/.config/tmux/tmux.conf
mkdir -p "$(dirname -- "$target")" || exit 1

if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
    printf 'tmux: already linked\n'
    exit 0
fi

if [ -e "$target" ] || [ -L "$target" ]; then
    backup="$target.bak.$(date +%Y%m%d-%H%M%S)"
    mv "$target" "$backup" || exit 1
    printf 'tmux: backed up existing target to %s\n' "$backup"
fi

ln -s "$source" "$target"
