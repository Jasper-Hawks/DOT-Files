#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias ls='ls --color=auto'
alias dl='youtube-dl -x --audio-format mp3 --prefer-ffmpeg'
PS1='[\u@\h \W]\$ '

alias record='ffmpeg -video_size 2560x1440 -f x11grab -i :0.0 -f pulse -i default'
