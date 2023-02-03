#!/bin/bash
                        
                        actualizacion=$(awk "NR==1" /home/pi/.local/actualizacion.txt)

                        if [ $actualizacion = "1.0.0" ];then
                        echo "no hace nada"
                        else
                        echo "Hay una actualización"
                        read a
                        
                        fi