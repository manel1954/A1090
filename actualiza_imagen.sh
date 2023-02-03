#!/bin/bash
                        actualizacion=$(awk "NR==1" /home/pi/.local/actualizacion.txt)
                        if [ $actualizacion = "1.1.0" ];then
                        cd /home/pi/A108
                        echo "no hay actualizaciones"
                        sleep 5
                        exit;
                        else
                        cd /home/pi/A108
                        echo "hay una nueva actualización"
                        sleep 5
                        sed -i "1c 1.1.0" /home/pi/.local/actualizacion.txt
                        fi
                        
                        
                        
                        cd /home/pi/.local
                        git clone http://github.com/manel1954/D1090
                        sleep 2
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
