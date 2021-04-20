from .. import loader, utils
import logging
from PIL import Image, ImageDraw, ImageOps , ImageFont
import io
import requests
@loader.tds
class abobaMod(loader.Module):
  """Делает смешные подписи к картинкам"""
  strings = {
    "name": "LobsterMEMES"
  }
  async def client_ready(self, client, db):
    self.client = client
  @loader.owner
  async def lobstercmd(self, message):
    """ответ на фото + текст = смешная картинка"""
    event, is_reply = await check_media(message)
    if not event:
      await message.edit("<b>Ответ командой на картинку!</b>")
      return
    font_bytes = requests.get("https://github.com/SergaTV/l/raw/master/Lobster-Regular.ttf").content
    if not utils.get_args_raw(message):
      await message.edit("где текст епт")
      return
    phrase = utils.get_args_raw(message)
    img = Image.open(io.BytesIO(await event.download_media(bytes)))
    width, height = img.size
    drawing = ImageDraw.Draw(img)
    font = ImageFont.truetype(io.BytesIO(font_bytes), round(height * 0.1))
    font_color = (242, 242, 242)
    textW, textH = drawing.textsize(phrase, font)
    proportion = textH / textW
    font = ImageFont.truetype(io.BytesIO(font_bytes), min(round(height * 0.2), round(width * 0.64 * proportion)))
    textW, textH = drawing.textsize(phrase, font)
    x = round((width - textW) / 2)
    y = round((height - textH) * 0.9)
    start_pos = (round((width - textW) / 2), round((height - textH) * 0.9))
    drawing.text((x+1, y), phrase, font=font, fill=shadowcolor)
    drawing.text((x, y-2), phrase, font=font, fill=shadowcolor)
    drawing.text(start_pos, phrase, font=font, fill=font_color)
    temptosend = io.BytesIO()
    img.save(temptosend, 'PNG')
    temptosend = temptosend.getvalue()
    await event.reply(file=temptosend)
    await message.delete()


#всё что сверху я спёр хз где
#всё что снизу я спер у кейзенда
async def check_media(message):
	reply = await message.get_reply_message()
	is_reply = True # FUNCTION BY @KEYZEND
	if not reply:
		reply = message
		is_reply = False
	if not reply.file:
		return False, ...
	mime = reply.file.mime_type.split("/")[0].lower()
	if mime != "image":
		return False, ...
	return reply, is_reply
