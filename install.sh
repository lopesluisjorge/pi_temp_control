#!/bin/bash

mkdir -p /home/pi/.local/bin
mkdir -p /home/pi/.local/share/fancontrol/logs
touch /home/pi/.local/share/fancontrol/logs/log.txt

sudo cp fanonoff.py /home/pi/.local/bin/fancontrol

sudo cp fancontrol.service /usr/lib/systemd/system/

sudo cp fancontrol.sh /usr/lib/systemd/scripts/

sudo chmod u+x /usr/lib/systemd/scripts/fancontrol.sh

sudo systemctl daemon-reload

sudo systemctl enable --now fancontrol
