#!/bin/bash
                        cd /home/pi/.local
                        git clone http://github.com/manel1954/A1090
                        sleep 2
                        if [ -f /home/pi/.local/A1090/aviso ]
                        then
                        sudo rm -R /home/pi/A108
                        cp -R /home/pi/.local/A1090 /home/pi
                        cd /home/pi
                        mv A1090 A108
                        sudo chmod 777 -R A108
                        cd /home/pi/.local
                        sudo rm -R A1090

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
                        sudo rm -R /home/pi/.local/A1090
                        echo "${GRIS}"
                        sleep 5
                        exit
                        fi
