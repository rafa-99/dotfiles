Date(){
	Date=`date +'%F %A'`
	echo -e ": $Date"
}

Kernel(){
	Kernel=`uname -nro`
	echo -e ": $Kernel"
}

Memory(){
	Memory=`free -h | awk '/^Mem:/ {print $3 "/" $2}'`
	echo -e ": $Memory"
}

Music(){
	Music=`mpc status | grep -`
	echo -e ": $Music"
}

Temp(){
	Temp=`sensors | awk '/^temp1:/ {print $2}' | head -1 | cut -b 2,3,6,7,8`
	echo -e ": $Temp"
}

Time(){
	Time=`date +'%H:%M'`
	echo -e ": $Time"
}

Weather(){
	Weather=`curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo`
	echo -e "滛: $Weather"
}

while true; do
	xsetroot -name "$(Music)   |   $(Memory)   |   $(Temp)   |   $(Weather)   |   $(Date)   |   $(Time)"
	sleep 10s
done &
feh --bg-scale /home/rafael/Pictures/Wallpaper.jpg &
compton &
setxkbmap pt &
numlockx on &
