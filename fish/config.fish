if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ""

function fish_prompt
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status
    set -l normal (set_color --reset)
    set -l color_cwd (set_color $fish_color_cwd)
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)

    set -l cwd (prompt_pwd -D 1)
    set -l vcs (fish_vcs_prompt)
    set -l symbol '›'
 
    set -l prompt_status (__fish_print_pipestatus '[' ']' '|' "$status_color" "$statusb_color" $last_pipestatus)

    echo -n -s $color_cwd $cwd $normal

    if test -n "$vcs"
        echo -n -s $vcs $normal
    end

    if test -n "$prompt_status"
        echo -n -s ' ' $prompt_status $normal
    end

    echo
    echo -n -s $symbol ' '
end

alias v='nvim'
