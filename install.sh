#!/bin/sh

echo Starting installation...

apt-get update  # To get the latest package lists 
#Installing required packages:
apt-get install git 
apt-get install python3-pip
apt-get install redis-server -y 

#Git cloning
cd ~/
git clone https://github.com/jtagt/mee6

#Installing discord.py
python3 -m pip install -U https://github.com/rapptz/discord.py/archive/async.zip#egg=discord.py[voice]

#Installing required packages
cd mee6/chat-bot 
pip3 install -r requirements.txt 

cd ../website 
pip3 install -r requirements.txt 

#Finish
echo Done installing. 
