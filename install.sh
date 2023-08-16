#!/bin/sh

# home (~)
for x in `ls -1 home`
do ln -svf $(realpath home/$x) ~/.$x
done


# config (~/.config)
#for x in `ls -1 config`
#do cp -vr config/$x ~/.config 
#done

# vscode
ln -svf $(realpath Workspaces) ~/
mkdir -p ~/.config/'Code - OSS'/User
ln -svf $(realpath vs-code/settings.json) ~/.config/'Code - OSS'/User

# xkb (as root)
sudo cp -v keyboard/sakis /usr/share/X11/xkb/symbols
sudo cp -v keyboard/evdev.xml /usr/share/X11/xkb/rules/evdev.xml
