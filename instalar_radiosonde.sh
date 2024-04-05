#!/bin/bash
sudo apt-get install python3 python3-venv sox git build-essential libtool cmake usbutils libusb-1.0-0-dev rng-tools libsamplerate-dev libatlas3-base libgfortran5 libopenblas-dev

cd ~

git clone https://github.com/projecthorus/radiosonde_auto_rx.git
cd radiosonde_auto_rx/auto_rx
./build.sh
cp station.cfg.example station.cfg

cd ~/radiosonde_auto_rx/auto_rx/
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cd ~/radiosonde_auto_rx/auto_rx/
source venv/bin/activate

sudo cp auto_rx.service /etc/systemd/system/

sudo systemctl enable auto_rx.service
sudo systemctl start auto_rx.service

