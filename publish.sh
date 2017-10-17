#!/bin/bash
echo PUBLISHING CAS ...
echo ----------------------------------------------------
echo changing directory to /data/cas-overlay-template ...
cd /data/cas-overlay-template
echo stoping Apache /data/apache-tomcat-8.5.15 ...
sudo /data/apache-tomcat-8.5.15/bin/catalina.sh stop
echo cleaning global directory for cas /etc/cas/ ...
sudo rm -r /etc/cas/
echo cleaning build ...
sudo ./build.sh clean
echo packing war file ...
sudo ./build.sh package
echo copying war file ...
sudo cp target/cas.war /data/apache-tomcat-8.5.15/webapps/
echo starting apache ...
sudo /data/apache-tomcat-8.5.15/bin/catalina.sh start
echo -e "\e[1;32mCAS PUBLISHED\e[0m"
