#!/usr/bin/bash

if [ -e /usr/share/X11/xorg.conf.d/20-intel.conf ]
then
  xrandr --addmode VIRTUAL $screen1
  sleep 3s
  echo "add resolution $1"

  xrandr --output VIRTUAL --mode $1 $2 LVDS1
  sleep 3s
  echo "start display VIRTUAL1 to $1"

  #xrandr --addmode VIRTUAL2 $screen2
  #sleep 3s
  #echo "add resolution $screen2"

  #xrandr --output VIRTUAL2 --mode $screen2 --right-of LVDS1
  #sleep 3s
  #echo "start display VIRTUAL2 to $screen2"

  # via https://bbs.archlinux.org/viewtopic.php?id=180904
  fi
hi(){
    echo "hi"
}
hi2(){
    echo "hi2"
}
usage(){
    echo "usage"
}
if [[ "$2" == "1" ]]; then
	hi
elif [[ "$2" == "2" ]]; then
	hi2
else
	usage
fi