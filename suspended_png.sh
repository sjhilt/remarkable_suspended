#!/bin/bash
result=`grep -m1 -ao '[0-9]' /dev/urandom | head -n 1`
today=`date +'%e'`
cd /home/root/bin

case $result in
  0)
    wget -q --no-check-certificate -O suspended https://nyt-today.acrogenesis.com/nyt
    ;;
  1)
    /home/root/bin/xkcd-dl
    ;;
  2)
    wget -q --no-check-certificate -O suspended https://picsum.photos/800/1200.jpg?grayscale
    ;;
  3)
    wget -q --no-check-certificate -O suspended https://loremflickr.com/g/1404/1872/HACKERS
    ;;
  4)
    /home/root/bin/djaas
    ;;
  5)
    wget -q --no-check-certificate -O suspended https://source.unsplash.com/random/1404x1872?query=HACKERS&orientation=LANDSCAPE
    ;;
  6)
    wget -q --no-check-certificate -O suspended https://cdn.freedomforum.org/dfp/jpg$today/lg/SWE_EX.jpg
    ;;
  7)
    wget -q --no-check-certificate -O suspende https://cdn.freedomforum.org/dfp/jpg$today/lg/DC_WP.jpg
    ;;
  8)
    wget -q --no-check-certificate -O suspended https://cdn.freedomforum.org/dfp/jpg$today/lg/CA_SFC.jpg
    ;;
  *)
    cp /home/root/suspended.png.bak /home/root/bin/suspended
    ;;
esac

mv suspended /usr/share/remarkable/suspended.png
# Manually Reboot the device, or run
#systemctl restart xochitl.service
exit 0
