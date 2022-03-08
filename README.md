# android-linux-monitor
Use Your Android As moniitor for Linux
### Methods
1. NO-machine you can check this 
[here](https://github.com/aruncs31s/android-linux-monitor/tree/main/nomachine)

<br />

2. x11vnc more details given below

<br />

## Setup 

add the following lines to
/usr/share/X11/xorg.conf.d/20-virtual.conf  

```

Section "Device"
 Identifier "intelgpu0"
Driver "intel"
Option "VirtualHeads" "1"
EndSection

```

![alt-text](https://raw.githubusercontent.com/aruncs31s/android-linux-monitor/main/screenshots/20220304132515.png)

## Download the script

```
curl -Lo virtual-display.sh https://raw.githubusercontent.com/aruncs31s/android-linux-monitor/main/virtual-display/virtual-display.sh

chmod +x virtual-display.sh

./virtual-display.sh