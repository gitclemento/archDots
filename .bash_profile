#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set PS1 variable
# PS1="\u@\H: \W $(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)$? \$"
PS1="${PS1}"

# 	Manage shell history
## make shell history infinite
HISTSIZE=
HISTFILESIZE=
## Use a shared history file
export HISTFILE=$HOME/.shared_bash_history
## enable history appending
shopt -s histappend
PROMPT_COMMNAD="history -a; history -n"
## Change format to add full data and time
export HISTTIMEFORMAT="%F %T "
## Ignore these commands in history
export HISTIGNORE="ls:pwd:history:man"
## Ignore duplicate entries
HISTCONTROL=ignoredups

# 	Edit PATH to include ~/.scripts and ~/.bin files
export PATH=$PATH:$HOME/.scripts:$HOME/.bin

# 	Set default programs
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# 	Set locale/lang variables
export LANG="en_US.UTF8"
export LC_TIME="en_US.UTF8"
export LC_ALL="en_US.UTF8"

# 	Set path to vimrc file
export MYVIMRC="$HOME/.config/vim/vimrc"

# Set man pager program
export MANROFFOPT="-c"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# 	ANSI colors
## Foreground Colors
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"

## Background Colors
BG_BLACK="\033[40m"
BG_RED="\033[41m"
BG_GREEN="\033[42m"
BG_YELLOW="\033[43m"
BG_BLUE="\033[44m"
BG_MAGENTA="\033[45m"
BG_CYAN="\033[46m"
BG_WHITE="\033[47m"

## Modifiers
BOLD="\033[1m"
FAINT="\033[2m"
ITALIC="\033[3m"
UNDERLINE="\033[4m"
BLINK_SLOW="\033[5m"
BLINK_RAPID="\033[6m"
REVERSE_VIDEO="\033[7m"
CONCEAL="\033[8m"

## Reset
# RESET="\033[0m"
RESET="\033[0m\017"
