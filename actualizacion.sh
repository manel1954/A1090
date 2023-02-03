#!/bin/bash
                        
                        actualizacion=$(awk "NR==1" /home/pi/.local/actualizacion.txt)
                        if [ $actualizacion = "1.1.0" ];then
                        echo "no hace nada"
                        ./qt_editor_bm  
                        else
                        echo "Hay una actualización"
                        cd /home/pi/A108
                        ./qt_editor_bm                        
                        fi