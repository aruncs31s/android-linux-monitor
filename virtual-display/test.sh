#!/usr/bin/bash
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
    
printf "Now connect Your Android phone\nUSB-debugging should be enabled"
printf "\nFor more detail see https://github.com/aruncs31s/android-linux-monitor/blob/main/Android_setup.md\n"
printf "\n\n\nPress enter after connecting\n>>>"
read nopp
    adb reverse tcp:5900 tcp:5900
    xrandr --addmode ${virt} ${w}x${h}
    
    
    xrandr --output ${virt} --mode ${b} LVDS1
    bar
    
    x11vnc -localhost -clip ${w}x${h}+${PW}+0

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
   echo "hi"
}
if [[ $1 == "--configure" ]]; then
    setup
elif [[ $1 == "--resolution" ]]; then
    resolution
else
usage
fi 
