#!/bin/sh
set -u
source=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)/karabiner.json
target=$HOME/.config/karabiner/karabiner.json
mkdir -p "$(dirname -- "$target")" || exit 1

if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
    printf 'karabiner: already linked\n'
    exit 0
fi

if [ -e "$target" ] || [ -L "$target" ]; then
    backup="$target.bak.$(date +%Y%m%d-%H%M%S)"
    mv "$target" "$backup" || exit 1
    printf 'karabiner: backed up existing target to %s\n' "$backup"
fi

ln -s "$source" "$target"
