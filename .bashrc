#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases used to streamline usual activites
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vim='nvim'
alias dl='youtube-dl -x --audio-format mp3 --prefer-ffmpeg'

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# Created by `pipx` on 2022-04-02 20:10:39
export PATH="$PATH:/home/jasper/.local/bin"

# Change caps lock to escape
setxkbmap -option caps:escape


