setup(){
printf "Virtual Display\n"
printf "Enter the Width\n>>>"
read w
printf "\nEnter the Height\n>>>"
read h
printf "\nEnter the position of new display(right/left)\n>>>"
read b

if [[ $b == "right" ]]; then
    position="--right-of"
else 
position="--left-of"
fi
}

bar(){
  n=20
i=0
while [ $i -le $n ]
do
    printf "."
    sleep 0.1
    i=$(($i+1))
done


}
usage(){
    printf "\n sh virtual-display --configure (to setup)"
    printf "\n "
}
resolution(){
    printf "\nAvailable resolutions\n"
    xrandr | grep -v current | grep -v disconnected | grep -v connected
}
virtual_display(){
    printf "Now connect Your Android phone\nUSB-debugging should be enabled"
    printf "\n\n\nPress enter after connecting\n"
    read nopp
    adb reverse tcp:5900 tcp:5900
    xrandr --addmode VIRTUAL ${w}/${h}
    
    
    xrandr --output VIRTUAL --mode $b LVDS1
    bar
    
    x11vnc -localhost -clip ${w}x${h}+${PW}+0
}
if [[ $1 == "--configure" ]]; then
    setup
elif [[ $1 == --resolution ]]; then
    resolution
else
usage
fi 
virtual_display