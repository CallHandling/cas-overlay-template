
#!/bin/bash
echo ----------------------------------------------------
echo pulling Changes ...
git pull chs master
echo changing directory to /data/cas-overlay-template ...
cd /data/cas-overlay-template
./publish.sh
