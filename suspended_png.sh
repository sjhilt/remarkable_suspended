#!/bin/bash
result=`grep -m1 -ao '[0-4]' /dev/urandom | head -n 1`

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
    wget -q --no-check-certificate -O suspended https://loremflickr.com/g/800/1200/HACKERS
    ;;
  4)
    /home/root/bin/djaas
    ;;
  *)
    cp /home/root/bin/suspended.png.bak /home/root/bin/suspended.png
    ;;
esac

mv suspended /usr/share/remarkable/suspended.png
# Manually Reboot the device, or run
#systemctl restart xochitl.service
exit 0
