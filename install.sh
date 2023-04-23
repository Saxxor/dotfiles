#!/bin/sh

for x in ls home/*
do cp -v home/$x ~/.$x
done

sudo cp -v keyboard/sakis /usr/share/X11/xkb/symbols
sudo cp -v keyboard/evdev.xml /usr/share/X11/xkb/rules/evdev.xml