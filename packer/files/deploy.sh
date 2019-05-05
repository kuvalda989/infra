#! /bin/bash


cat <<EOF > /etc/init.d/mystartup.sh
#! /bin/sh
systemctl start mongod
systemctl enable mongod
su appuser -c 'source ~/.rvm/scripts/rvm && cd /home/appuser && git clone https://github.com/Artemmkin/reddit.git && cd reddit && bundle install && puma -d'
EOF
