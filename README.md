# android-linux-monitor
Use Your Android As moniitor for Linux

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

