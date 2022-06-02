#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -le 3 ]; then
	exec startx
fi
# Created by `pipx` on 2022-04-02 20:10:39
export PATH="$PATH:/home/jasper/.local/bin"
export PATH="$PATH:/media/Applications/FoundryVTT"
export PATH="$PATH:/media/Applications/Pysistant/src/"
export PATH="$PATH:/home/jasper/notes/"

systemctl --user import-environment PATH
