#!/bin/bash
                        #Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
                        
                        
                        cd /home/pi/.local
                        git clone http://github.com/manel1954/D1090
                        if [ -f /home/pi/.local/D1090/aviso ]
                        then
                        sudo rm -R /home/pi/A108
                        cp -R /home/pi/.local/D1090 /home/pi
                        cd /home/pi
                        mv D1090 A108
                        sudo chmod 777 -R A108
                        cd /home/pi/.local
                        sudo rm -R D1090
                        cd /home/pi/A108
                        ./qt_imagen_actualizada
                        else
                        clear
                        echo "${VERDE}"
                        echo "***********************************"
                        echo -n "${ROJO}"
                        echo "           ERROR DE RED            "
                        echo -n "${VERDE}"
                        echo "***********************************"
                        sudo rm -R /home/pi/.local/D1090
                        echo "${GRIS}"
                        sleep 5
                        exit
                        fi
