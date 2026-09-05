#!/bin/sh
set -u
source=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target=$HOME/.config/ghostty
mkdir -p "$(dirname -- "$target")" || exit 1

if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
    printf 'ghostty: already linked\n'
    exit 0
fi

if [ -e "$target" ] || [ -L "$target" ]; then
    backup="$target.bak.$(date +%Y%m%d-%H%M%S)"
    mv "$target" "$backup" || exit 1
    printf 'ghostty: backed up existing target to %s\n' "$backup"
fi

ln -s "$source" "$target"
