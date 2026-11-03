#!/bin/sh
set -u

source=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

shared_dir=$HOME/.agents
claude_dir=$HOME/.claude
codex_dir=$HOME/.codex
status=0

mkdir -p "$shared_dir/skills" "$claude_dir/skills" "$codex_dir" || exit 1

link_item() {
    link_source=$1
    link_target=$2
    backup_dir=${3:-}

    if [ -L "$link_target" ] && [ "$(readlink "$link_target")" = "$link_source" ]; then
        printf 'ai: already linked: %s\n' "$link_target"
        return 0
    fi

    if [ -e "$link_target" ] || [ -L "$link_target" ]; then
        if [ -n "$backup_dir" ]; then
            mkdir -p "$backup_dir" || return 1
            backup="$backup_dir/${link_target##*/}.bak.$(date +%Y%m%d-%H%M%S)"
        else
            backup="$link_target.bak.$(date +%Y%m%d-%H%M%S)"
        fi
        mv "$link_target" "$backup" || return 1
        printf 'ai: backed up existing target to %s\n' "$backup"
    fi

    ln -s "$link_source" "$link_target"
}

link_item "$source/AGENTS.md" "$codex_dir/AGENTS.md" || status=1
link_item "$source/AGENTS.md" "$claude_dir/CLAUDE.md" || status=1

for skill in "$source/skills"/*; do
    [ -f "$skill/SKILL.md" ] || continue
    name=${skill##*/}
    link_item "$skill" "$shared_dir/skills/$name" "$shared_dir/skills-backup" || status=1
    link_item "$skill" "$claude_dir/skills/$name" "$claude_dir/skills-backup" || status=1
done

exit "$status"
