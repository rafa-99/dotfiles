compton &
feh --bg-scale /home/rafael/Pictures/Wallpaper.png &
setxkbmap pt &
Memory(){
	Memory=`free -h | awk '/^Mem:/ {print $3 "/" $2}'`
	echo -e "Memory $Memory"
}

Time(){
	Time=`date +'%F %H:%M %A'`
	echo -e "$Time"
}

Temp(){
	Temp=`sensors | awk '/^temp1:/ {print $2}' | head -1 | cut -b 2,3,6,7,8`
	echo -e "$Temp"
}

Kernel(){
	Kernel=`uname -nro`
	echo -e "$Kernel"
}
while true; do
	xsetroot -name "$(Memory)   |   $(Temp)   |   $(Kernel)   |   $(Time)"
	sleep 30s
done &
mpd
