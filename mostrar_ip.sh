#!/bin/bash
sudo ifconfig | grep "inet" > /home/pi/.local/ip_raspberry.txt
