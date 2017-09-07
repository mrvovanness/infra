#!/bin/bash

set -e
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
sudo mv /tmp/reddit.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable reddit
