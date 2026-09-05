#!/bin/sh
set -u
source=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target=$HOME/.config/nvim
parent=$(dirname -- "$target")
mkdir -p "$parent" || exit 1

if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
    printf 'nvim: already linked\n'; exit 0
fi
if [ -e "$target" ] || [ -L "$target" ]; then
    backup="$target.bak.$(date +%Y%m%d-%H%M%S)"
    mv "$target" "$backup" || exit 1
    printf 'nvim: backed up existing target to %s\n' "$backup"
fi
ln -s "$source" "$target"
