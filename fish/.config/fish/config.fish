if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set environment variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PATH $HOME/.local/bin $PATH
set -U fish_user_paths ~/devel/flutter/bin $fish_user_paths

# Aliases
alias ls 'eza -l -h -g -o --git --icons'
alias ll 'ls -a'
alias g git
alias vim nvim

# Starship
starship init fish | source

# Zoxide
zoxide init fish | source

# z and fzf
function zf --description 'Use zoxide + fzf to jump to a directory'
    zoxide query -l | fzf --height 40% --reverse --prompt="zoxide > " | read -l result
    if test -n "$result"
        cd "$result"
    end
end

set -g fish_greeting ""

# yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
