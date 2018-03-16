#!/bin/sh 
echo Starting installation...
apt-get update  # To get the latest package lists 
apt-get install git
apt-get install python3
apt-get install python3-pip
apt-get install redis-server -y 
cd ~/
git clone https://github.com/jtagt/mee6
python3 -m pip install -U https://github.com/rapptz/discord.py/archive/async.zip#egg=discord.py[voice]
cd mee6/chat-bot 
pip3 install -r requirements.txt 
cd ~ 
cd mee6/website 
pip3 install -r requirements.txt 
cd ~ 
cd mee6/ 
echo done installing. 
#etc. 
