
xrdb ~/.Xresources
xbindkeys

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
