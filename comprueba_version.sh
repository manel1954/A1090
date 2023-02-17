#!/bin/bash

cd /home/pi
sudo rm -R /home/pi/versionA109
git clone http://github.com/manel1954/versionA109

nueva_version=$(awk "NR==1" /home/pi/versionA109/versionA109.txt)

version_actual=$(awk "NR==101" /home/pi/status.ini)

if [ "$version_actual" = "$nueva_version" ];then
echo "no hace nada"
else
cd /home/pi/A108
./qt_comprueba_version 
fi