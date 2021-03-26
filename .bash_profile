#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

sudo umount /dev/sda1 
sudo mount /dev/sda1 /media/
feh --bg-scale ~/Pictures/DiscoRev.jpg
wal -i Pictures/DiscoRev.jpg
