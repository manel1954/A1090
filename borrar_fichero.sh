#!/bin/bash
cd /Home/pi/BORRAR
shopt -s extglob
rm -f !(noborrar.txt)
