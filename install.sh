#!/bin/bash
mkdir /home/root/bin
cp suspended.png.bak.png /home/root/bin/suspended.png.bak
cp suspended_png.sh /home/root/bin
cp djaas /home/root/bin
cp xkcd-dl /home/root/bin
cp background.service /etc/systemd/system/background.service
cp background.timer /etc/systemd/system/background.timer
systemctl enable background.service
systemctl enable background.timer
