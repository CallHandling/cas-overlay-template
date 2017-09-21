
#!/bin/bash
echo ----------------------------------------------------
echo changing directory to /data/cas-overlay-template ...
cd /data/cas-overlay-template
echo pulling Changes ...
sudo git pull chs master
./publish.sh
