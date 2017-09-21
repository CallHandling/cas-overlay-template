#!/bin/bash
cd /data/cas-overlay-template
sudo sh /opt/apache-tomcat-8.5.15/bin/catalina.sh stop
sudo rm -r /etc/cas/
sudo ./build.sh clean
sudo ./build.sh package
sudo mv target/cas.war /opt/apache-tomcat-8.5.15/webapps/
sudo /opt/apache-tomcat-8.5.15/bin/catalina.sh start
