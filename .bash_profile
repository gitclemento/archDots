#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set history size to inf
HISTSIZE=
HISTFILESIZE=
# Change format to add full data and time
export HISTTIMEFORMAT="%F %T "
# Edit PATH to include ~/.scripts and ~/.bin files
export PATH=$PATH:$HOME/.scripts:$HOME/.bin
# Set default programs
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="firefox"
# Set locale/lang variables
export LANG="en_US.UTF8"
export LC_TIME="en_US.UTF8"
export LC_ALL="en_US.UTF8"
# Set path to vimrc file
export MYVIMRC="$HOME/.config/vim/vimrc"

