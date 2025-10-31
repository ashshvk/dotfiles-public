if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ""

# Set environment variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PATH $HOME/.local/bin $PATH

# Aliases
alias ls 'eza -l -h -g -o --git --icons'
alias ll 'ls -a'
alias vim nvim
alias kana 'sudo /home/saber/.cargo/bin/kanata --cfg /home/saber/.local/bin/kanata.kbd'

# Git alias


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


# yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
