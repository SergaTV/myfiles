import asyncio
from lxml import html
from requests import get
import sys
import os
import calendar
import time
import logging
from requests import get
from .. import loader, utils
logger = logging.getLogger(__name__)
@loader.tds
class AnonfileMod(loader.Module):
	"""AnonFiles DECODER"""
	strings = {"name": "AnonFiles"}
	@loader.unrestricted
	async def anonfilecmd(self, message):
		""".anonfile LINK"""
		args = utils.get_args(message)
		link = args[0]
		ts = calendar.timegm(time.gmtime())
		link = str.replace(link, "\n", "")
		page = get(link)
		tree = html.fromstring(page.content)
		dlink = tree.xpath('//a[@class="btn btn-primary btn-block"]/@href')
		fname = str.replace(os.path.basename(dlink[0]), ".", "_" + str(ts) + ".")
		await utils.answer(message, "Your decoded url: "+ dlink[0])