#!/bin/sh 
echo Starting installation...
apt-get update  # To get the latest package lists 
apt-get install redis-server -y 
cd mee6/chat-bot 
pip3 install -r requirements.txt 
cd ~ 
cd mee6/website 
pip3 install -r requirements.txt 
cd ~ 
cd mee6/ 
echo done installing. 
#etc. 
