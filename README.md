# CycleTraffic
Automation of CycleGAN to process incoming images

cd <path/to/directory/in which CycleGAN is sitting>
git clone https://github.com/HeinzBenjamin/CycleTraffic/

cd CycleTraffic
sh watch_dir.sh

--- image files named pic.png dropped into the directory CycleTraffic/shared/myPics_incoming will be run through CycleGAN ---
--- edit the config file Cycletraffic/share/myPicsIncoming/CycleTraffic.conf to change what exactly CycleGAN should do ---
