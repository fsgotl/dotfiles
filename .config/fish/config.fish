
# path for linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/info:$INFOPATH"

# path for nodebrew
set -g fish_user_paths "$HOME/.nodebrew/current/bin/" $fish_user_paths

# path for go
export PATH="$HOME/go/bin:$PATH"

# for starship
eval (starship init fish)

# alias
alias ll='ls -lF'
alias la='ls -laF'
alias l='ls -CF'
alias e.='explorer.exe .'
alias gst='git status'
alias gc='git commit -m'
alias gl='git log --graph --remotes --tags --date=iso --branches --pretty="format:%C(yellow)%h %C(cyan)%ad %C(green)%an%Creset%x09%s %C(red)%d%Creset"'
alias dc='git diff --color-words --cached'
alias cdh='cd /mnt/c/Users/ono_ryo/'
alias ipl='ip a | grep 192'
alias docker='docker.exe'
alias d='docker.exe'
