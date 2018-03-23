RUN apt-get install -y git python3-pip redis-server nginx 
RUN cd ~ && cd mee6/chat-bot && pip3 install --upgrade -r requirements.txt
RUN cd ~ && cd mee6/website && pip3 install --upgrade -r requirements.txt
RUN python3 -m pip install -U https://github.com/rapptz/discord.py/archive/async.zip#egg=discord.py[voice]
