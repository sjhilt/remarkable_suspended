# remarkable_suspended
Suspended Screen Update for Remarkable2
# Instructions

mkdir /home/root/bin

cd /home/root/bin

# Create the script file

copy suspended_png.sh to this directory 

# Create the service
cp background.service /etc/systemd/system/background.service

cp background.timer /etc/systemd/system/background.timer

# Setup The Service

systemctl enable background.service

systemctl enable background.timer
