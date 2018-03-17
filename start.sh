@echo off
echo Starting MEE6...
cd ~
cd mee6/website
python3 app.py
cd ~
cd mee6/chat-bot
python3 bot.py
echo MEE6 Started.
