# Selfhosting - Setup

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

export REDIS_URL=redis://localhost 

export OAUTH2_CLIENT_ID= put discord client id here

export OAUTH2_CLIENT_SECRET= put discored client secret here

export MEE6_TOKEN= put your bot token

export OAUTH2_REDIRECT_URI=http://localhost:5000/confirm_login leave this the same or change it to your domain.

export MAL_USERNAME= replace with my anime list cred.

export MAL_PASSWORD= replace with my anime list cred.

export TWITCH_CLIENT_ID= replace with twitch client id

export GOOGLE_API_KEY= Replace with a yt api key 

export SECRET_KEY=1234 The Secret Key needs to be changed to a random value of any choice!

Now to ensure they work were going to execute those commands two ways.
The first way is by copying all of those commands and pasting them into terminal and execute all of them.

The second way which both are required, is by doing:
>cd 
>sudo nano .bashrc

and then you need to paste all of those variables above. Then save.

#Selfhosting - Running the bot!

To get the bot run with out any errors its best you reboot your VM or machine before you launch for the first time, this help the booting process smoother. 

To start the bot first do:
>cd mee6/chat-bot/
then to run it do:
>python3 bot.py


To start the website please open another terminal and execute these commands:
>cd mee6/website/
then to start the website run:
>python3 app.py


#Conclusion

Today we've reviewed how to selfhost mee6! Now you can change it to make it your and maybe add a few features!

Please keep in mind because we didnt have access to some of the repos we couldnt make all the features work. But maybe in the feature we will be able to provide those features.

If you find any issues please feel free to open an issue!









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
