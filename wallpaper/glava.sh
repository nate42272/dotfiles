if pgrep -x "glava" > /dev/null; then
	exit 1
else
	glava &
	sleep 0.5
	xdotool search --onlyvisible --class glava windowmove 1120 33 windowsize 610 300
fi
