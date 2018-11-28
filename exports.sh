
# Mee6 SelfHosting Config
# This is a set of commands that need to be appended to
# ~/.bashrc in order for the bot to work. See the Readme for more info.
export REDIS_URL=redis://localhost
export OAUTH2_CLIENT_ID=#Discord client ID for your bot
export OAUTH2_CLIENT_SECRET=#your Discord bot's client secret
export MEE6_TOKEN=#Your Discord bot token
export OAUTH2_REDIRECT_URI=http://localhost:5000/confirm_login #change to your domain if needed
export MAL_USERNAME=#username for account on http://myanimelist.net
export MAL_PASSWORD=#password for above site
export TWITCH_CLIENT_ID=#client ID for a twitch app
export GOOGLE_API_KEY=#a youtube api key
export SECRET_KEY=1111 #Change to a longer code, security is important