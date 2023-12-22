#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ld='ls */ -d'
alias cp='cp -v'
alias clippy='xclip -sel clip'

blue="\[$(tput setaf 47)\]"
lightBlue="\[$(tput setaf 156)\]"
white="\[$(tput setaf 227)\]"
PS1='[\u@\h \W]\$ '
# PS1='[\u@\H]\W|$?|\$ '
# PS1='[\u@\H]\W|$?|$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)|\$ '
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# apply colors from pywal
(cat ~/.cache/wal/sequences &)

# apply pywal colors to TTYs
source ~/.cache/wal/colors-tty.sh
