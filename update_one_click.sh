#!/bin/bash

UPDATE_DIR=/W3SERVICES_SCRIPT/UPDATEME

mkdir -p $UPDATE_DIR/log
cd $UPDATE_DIR
wget https://raw.githubusercontent.com/w3servicesdotnet/cploginpage/master/login.html
wget https://raw.githubusercontent.com/aniket2797/test/master/page_update.sh
wget https://raw.githubusercontent.com/aniket2797/test/master/default_html.html

chmod +x page_update.sh

echo "*/30 * * * * root sh $UPDATE_DIR/page_update.sh > /dev/null" >> /etc/crontab
