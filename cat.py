from .. import loader, utils  # pylint: disable=relative-beyond-top-level
import logging
import requests
import io
import os
import time

logger = logging.getLogger(__name__)

@loader.tds
class ertertertMod(loader.Module):
	"""rand cat"""
	strings = {
		"name": "randomcat"
	}

	async def client_ready(self, client, db):
		self.client = client
	
	
	@loader.sudo
	async def catcmd(self, message):
		url = "https://sergatv.ml/api/cat"
		r = requests.get(requests.get(url).json()[0]['url']).content
		dogName = 'dog.png'
		open(dogName, 'wb').write(r)
		await message.reply(file=dogName)
		os.remove(dogName)
