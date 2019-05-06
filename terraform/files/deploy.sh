#!/bin/bash

set -e

source ~/.profile
git clone https://github.com/Artemmkin/reddit.git
cd reddit
bundle install
puma -d
sleep 3

# sudo mv /tmp/puma.service /etc/systemd/system/puma.service
# sudo systemctl start puma
# sudo systemctl enable puma
