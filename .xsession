if [ "$DESKTOP_SESSION" = "dwm" ];
then
	picom &
	feh --bg-fill ~/images/wallpaper.jpg
	~/scripts/system/glava.sh
	dwmblocks &
fi

kdeconnectd &
