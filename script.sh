#!/bin/bash

yum update -y
yum install git -y
yum install wget -y

git clone https://github.com/sindhuja92/content-nodejs-hello-world.git
cp content-nodejs-hello-world/cf-cli-installer_6.43.0_x86-64.rpm .
rpm -i cf-cli-installer_6.43.0_x86-64.rpm

cf --version

cf login -a api.run.pivotal.io -u sindhuvutukuri92@gmail.com -p Sindhuja92!

cf push


