#!/bin/bash

chmod u+x *.sh
source install_ruby.sh
./install_mongodb.sh
./deploy.sh
