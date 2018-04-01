from plugin import Plugin
import random

class Git(Plugin):

    fancy_name='Git Repo'

    async def get_commands(self, server):
        commands = [
            {
                'name': '!git',
                'description': 'Links to Mee6\'s Github page.'
            },
        ]
        return commands

    async def on_message(self, message):

        flavortext = [
            "Glad you asked!",
            "Hey kid, wanna see some source code?",
            "Thanks for stopping by!",
            "This isn't the original mee6 it is a selfhostable version."
            ]

        if message.content == '!git':
            await self.mee6.send_message(
                message.channel,
                '{}\nhttps://github.com/jtagt/mee6/'.format(
                random.choice(flavortext)
                )
             )
