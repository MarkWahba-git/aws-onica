#!/bin/bash
set -e
#provision.sh
 sudo apt-get update -y
 echo "apt-get update done."
 

 sudo cp /tmp/index.php /var/www/html/index.php

sudo apt-get install apache2 php libapache2-mod-php awscli stress -y
#sudo aws s3 cp s3://Mark-onica/index.php /var/www/html


sudo service apache2 restart

