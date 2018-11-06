**PLEASE VISIT https://jtagt.github.io/mee6-docs/ FOR CLEANER DOCS**

Need help? We have a support server! https://discord.gg/WD4pssB

NOTE: This only words with Python <= 3.5, but we will use Python 3.5. **DOES NOT WORK WITH PYTHON 2.x OR PYTHON 3.4**

We will be using Ubuntu 18 for this tutorial, but linux systems that use `apt` package manager like Mint, CentOS, Debian, and Raspbian should work fine.

VMs (Virtual Machines) are fine, but WSL (Windows Subsystem to Linux, if you don't already use it don't try) is not recommended.

You can install automatically or manually, see below.
# Manual installation

Install python3, pip3, redis, nginx, and git (if you haven't already):

`apt install -y python3 python3-pip redis-server nginx git`

Then, discord.py:

`python3 -m pip install -U https://github.com/rapptz/discord.py/archive/async.zip#egg=discord.py[voice]`

The next thing we need to do is clone this repo from github:

`git clone https://github.com/jtagt/mee6/`

Then, we need `pip` to install the necessary packages for the website script and the chat script. First, we will install for the website script:

`cd mee6/website && pip3 install -r requirements.txt`

Then we will do the same command, but for the chat script:

`cd ../chat-bot && pip3 install -r requirements.txt`

# Automatic Installation

Clone this repo (obviously have `git` installed first) and `cd` into it.

Then run the installer (feel free to read it first):

`./install.sh`

You can then remove it with:

`rm install.sh`.

# Alias Config
Now that all the dependencies are installed we can move onto confgiuring some of the variables.
```
export REDIS_URL=redis://localhost
export OAUTH2_CLIENT_ID=#Discord client ID for your bot
export OAUTH2_CLIENT_SECRET=#your Discord bot's client secret
export MEE6_TOKEN=#Your Discord bot token
export OAUTH2_REDIRECT_URI=http://localhost:5000/confirm_login #change to your domain if needed
export MAL_USERNAME=#username for account on http://myanimelist.net
export MAL_PASSWORD=#password for above site
export TWITCH_CLIENT_ID=#client ID for a twitch app
export GOOGLE_API_KEY=#a youtube api key
export SECRET_KEY=1111 #***Change to a longer code, security is important***
```
If you are fine with not having some features work, simply remove the variable value and leave the empty assignment.

Now do:

`cd ~ && nano .bashrc`

Press Control-V to go to the end of the document (don't remove anything), and **paste in these variables**. Save and exit.
(To exit, press Control-X, then Y then Enter.)
***REBOOT AFTER YOU SAVE***

# Website Config

We need to proxy behind `nginx` to be able to access the site from a mobile device (where browsers cannot access `localhost` pages). To do so, we need to edit the nginx config file.

First, clear the default enabled sites on nginx:

`> /etc/nginx/sites-enabled/default`

Then, edit it:

`nano /etc/nginx/sites-enabled/default`

Then paste in (change example.com to your domain if needed):
```
server {
        listen 80;
        server_name www.example.com example.com;
        root /var/www/html/;
        
        location / {
            proxy_pass http://localhost:5000/;
            include /etc/nginx/proxy_params;
        }
}
```
Now save and exit.
(To exit, press Control-X, then Y then Enter.)

Now restart the `nginx` service:
`service nginx restart`

Now, the dashboard is accessible at your machines local ip address, which should be something like `192.168.1.xx` or `192.168.x.xx`.

To make it accessible to the outside world you must port forward. Visit this website for help on port fowarding:

https://portforward.com/router.htm

If you have a domain you can use Cloudflare, point your domain at your IP address, and update the config file to host the dashboard on a public domain!


# Running Mee6 (desktop/SSH)

At this point, the aliases set in `.bashrc` will need to be active. For that to happen, `bash` must be restarted. This can mean closing and reopening your SSH session, closing and opening your terminal emulator, or simply rebooting. If you are extra paranoid and would like things as smooth as possible, the latter is probably the best idea.

Once you get back to a shell, drop to a root prompt.

`sudo -i`

Then start the bot, go to your mee6 repo location:

`cd ~/mee6/chat-bot/ && python3 bot.py`

Open another instance of Terminal/SSH (login as root there too), navigate to the mee6 folder, and execute this python file to start the website:

`cd ~/mee6/website/ && python3 app.py`

Do note that you may have to reboot after closing the website so that it works again, 
as python does not automatically unbind from the port.

# Running Mee6 (command line)
**Chat-Bot**
Run `cd ~/mee6/chat-bot/ && python3 bot.py`. Hit Control and Z, then type bg.
**Website**
Run `cd ~/mee6/website/ && python3 app.py`. Hit Control and Z, then type bg.

# Conclusion

Sadly, not enough source code is available to make everything work, but I do my best!
If you find any problems, please join our dedicated Discord server, link at the top of this document.

PLEASE NOTE: Not all features may work as this repo is in the process of being updated.

