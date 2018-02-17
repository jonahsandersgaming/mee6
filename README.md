# Selfhosting mee6!

We have made some chnages to mee6 to make it alot of easier to selfhost. -Note. You will not recieve much help when or if its needed.-

We reccomend an ubuntu VM or OS this is because it is easiest to setup on. 

The first step is to install redis, inorder to do this you need to run:
>sudo apt-get install redis-server

The next thing we need to do is clone the repo from github:
>git clone https://github.com/jtagt/mee6/

The next step is to go into the direcotry where your chat-bot is, so run:
>cd mee6/chat-bot/

The next step is to install the dependencies, to do so you need to run:
>sudo pip3 install -r requirements.txt

The next step is to do the same thing execept we need to install the dependencies for the website:
>cd mee6/website/

Then after that we need to install it by running:
>sudo pip3 install -r requirements.txt

Now that all the dependencies are installed we can move onto confgiuring some of the variables.










# Mee6 : The Discord bot
![Mee6](http://mee6.xyz/static/img/meeseeks.png)

## What is it?
Mee6 is a Discord bot that lets you easily add your own commands to your server
through a user-friendly dashboard. But this is just one of the numerous features 
of this bot.

## Testimonials (OMG OMG OMG...)
![Jason](http://i.imgur.com/sXXQy61.png)

## Mee6 uses and loves

- [discord.py](https://github.com/Rapptz/discord.py)
- [discord.ie](https://github.com/qeled/discordie)
- [aioredis](https://github.com/aio-libs/aioredis)
- [flask](http://flask.pocoo.org)
- [Docker](https://www.docker.com/)

## How to contribute !

If you want to create a plugin for the bot, do not hesitate to contact me in 
[Mee6's discord server](https://discord.gg/mee6) :wink:.

You have to be at least a little bit familiar with **asyncio** python library 
and with python in general.
