
xrdb ~/.Xresources
xbindkeys
#xscreensaver --no-splash &

xidlehook \
--not-when-audio \
--not-when-fullscreen \
--timer 600 \
'i3lock -k -B 7 -e -n --indicator --inside-color=ffffff00 --ring-color=0591f5f0 --insidever-color=ffffff00 --time-color=ffc0cbff --date-color=ffc0cbff' \
'' \
--timer 30 \
'' \
'' \
--timer 300 \
'' \
'' &

session=${1: -i3}

if [ $session = xterm ]
then
	session=${2: -i3}
fi

case $session in
	i3|i3wm		) exec i3;;
	persona		) exec i3 -c /home/seth/.config/i3/config-persona;;
	*		) exec i3;;
esac
