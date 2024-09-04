#!/bin/bash

yum update -y
yum install httpd -y
yum install git -y 
systemctl start httpd
systemctl enable httpd

cd  /var/www/html/
git clone https://github.com/Prabhash1710/myrepo2.git .
chmod 777 /var/www/html/index.html
chmod 777 /var/www/html/script.js
chmod 777 /var/www/html/styles.ass
systemctl restart httpd

