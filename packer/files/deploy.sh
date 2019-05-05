#! /bin/bash


cat <<EOF > /etc/init.d/mystartup.sh
#! /bin/bash
su appuser -c 'source ~/.rvm/scripts/rvm'
su appuser -c 'git clone https://github.com/Artemmkin/reddit.git'
su appuser -c 'cd reddit && bundle install'
su appuser -c 'puma -d'
EOF
