#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vim='nvim'
alias dl='youtube-dl -x --audio-format mp3 --prefer-ffmpeg'
setxkbmap -option caps:escape

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# Created by `pipx` on 2022-04-02 20:10:39
export PATH="$PATH:/home/jasper/.local/bin"
export PATH="$PATH:/media/Applications/FoundryVTT"
export PATH="$PATH:/media/Applications/Pysistant/src/"
export PATH="$PATH:/home/jasper/notes/"
cat /home/jasper/notes/TODO/todo.txt
