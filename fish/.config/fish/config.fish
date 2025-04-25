if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set environment variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PATH $HOME/.local/bin $PATH

# Aliases
alias ls 'eza -l -h -o --git --icons'
alias ll 'ls -a'
alias g git

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

set -gx PATH $HOME/Qt6.8/bin $PATH
