#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Useful information to keep in mind
echo Audio: pulsemixer cmus
echo Configs:
echo i3: /.config/i3/ 
echo Startup Script: ~/.bash_profiles 

# Aliases used to streamline processes
alias load='pactl load-module module-loopback latency_msec=1'
alias unload='pactl unload-module module-loopback'
alias record='ffmpeg -f x11grab -video_size 1920x1080 -framerate 60 -i :0.0 -f pulse -i default -preset ultrafast -crf 18 -pix_fmt yuv420p vid.mp4'
alias map='cd /home/jasperh/Downloads/opt/maptool/bin'
alias dl='youtube-dl -x --audio-format mp3 --prefer-ffmpeg'

