# CycleTraffic
## Automation of CycleGAN to process incoming images

sudo apt-get install inotify-tools

cd <path/to/CycleGAN>

git clone https://github.com/HeinzBenjamin/CycleTraffic/


cd CycleTraffic


sh watch_dir.sh



--> image files named pic.png dropped into the directory CycleTraffic/shared/myPics_incoming will be run through CycleGAN
--> edit the config file Cycletraffic/share/myPicsIncoming/CycleTraffic.conf to change what exactly CycleGAN should do
