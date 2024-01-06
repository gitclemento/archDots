#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#  ---------------------------------------------------------------

# aliases 
alias ls='ls --color=auto'
alias diff='diff --color'
alias grep='grep --color=auto'
alias ld='ls */ -d'
alias cp='cp -v'
alias clippy='xclip -sel clip'
alias pastebin='curl -F 'file=@-' 0x0.st'
alias zat='zathura'
alias py='python3'
alias bathelp='bat --plain --language=help'
# alias cat='bat' # doen't work well with pywall; find out why

#  ---------------------------------------------------------------

# functions
function play(){ mpv "$@" & }

# PS1 variable config
blue="\[$(tput setaf 47)\]"
lightBlue="\[$(tput setaf 156)\]"
white="\[$(tput setaf 227)\]"
PS1='[\u@\h \W]\$ '
# PS1='[\u@\H]\W|$?|\$ '
# PS1='[\u@\H]\W|$?|$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)|\$ '
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#  ---------------------------------------------------------------

# pywal config for terminal

# apply colors from pywal
(cat ~/.cache/wal/sequences &)

# apply pywal colors to TTYs
source ~/.cache/wal/colors-tty.sh


#  ---------------------------------------------------------------

# color --help output
help() {
    "$@" --help 2>&1 | bathelp
}
