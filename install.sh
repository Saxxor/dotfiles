#!/bin/sh

# home (~)
for x in `ls -1 home`
do cp -v home/$x ~/.$x
done


# config (~/.config)
#for x in `ls -1 config`
#do cp -vr config/$x ~/.config 
#done

# xkb (as root)
sudo cp -v keyboard/sakis /usr/share/X11/xkb/symbols
sudo cp -v keyboard/evdev.xml /usr/share/X11/xkb/rules/evdev.xml
