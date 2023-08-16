#!/bin/sh
if grep -q -F 'Arch Linux' /etc/issue
then distro=arch
else distro=debian
fi

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

if test $distro = arch
then vscodedir='Code - OSS'
else vscodedir=VSCodium
fi

mkdir -p "$HOME/.config/$vscodedir/User"
for x in `ls -1 vs-code`
do ln -svf $(realpath vs-code/$x) "$HOME/.config/$vscodedir/User"
done

# xkb (as root)
sudo cp -v keyboard/sakis /usr/share/X11/xkb/symbols
sudo cp -v keyboard/evdev.xml /usr/share/X11/xkb/rules/evdev.xml
