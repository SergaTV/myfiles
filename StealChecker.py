From: <Saved by Blink>
Snapshot-Content-Location: http://hursy.cf/module/StealChecker.py
Subject: 
Date: Fri, 3 Sep 2021 12:41:34 -0000
MIME-Version: 1.0
Content-Type: multipart/related;
	type="text/html";
	boundary="----MultipartBoundary--TgvE6WC9uaOfK0GWMNzWEYb11hHIyEYGQOKBvajreE----"


------MultipartBoundary--TgvE6WC9uaOfK0GWMNzWEYb11hHIyEYGQOKBvajreE----
Content-Type: text/html
Content-ID: <frame-BEE7760E88FC1B9B739D2B0B1FEB35B9@mhtml.blink>
Content-Transfer-Encoding: binary
Content-Location: http://hursy.cf/module/StealChecker.py

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head><body>from .. import loader, utils
import requests
@loader.tds
class StealCheckerMod(loader.Module):
    """Session Steller Checker: .scheck (reply to file)"""
    strings = {'name': 'Session Steller Checker'}
    async def scheckcmd(self, message):
        reply = await message.get_reply_message()
        check = []
        triggers = ['DeleteAccountRequest', 'StringSession', 'sh1tn3t.ml', 'getattr']
        if reply.file:
            for trigger in triggers:
                for count, _ in enumerate(open(await reply.download_media(), "r").read().split("\n"), start=1):
                    if trigger in _:
                        check.append((count, _))
        elif reply:
            urll = reply.raw_text.split()
            url = ""
            for url in urll:
                if "://" in url:
                    break
            data = requests.get(url).text
            for trigger in triggers:
                for count, _ in enumerate(data.split("\n")):
                    if trigger in _:
                        check.append((count, _))
        s = ''
        if not len(check) == 0:
            for checks in check:
                    s += f"<b>Line num:</b> <code>{checks[0]}</code>\n<b>Scam code:</b> <code>{' '.join(str(checks[1]).split())}</code>\n\n"
            return await message.edit(f"<b>❗️WARNING❗️</b> ❌SCAM MODULE❌\n\n" + s)
        else:
            return await message.edit(f"<b>Module is clear✅</b>")</body></html>
------MultipartBoundary--TgvE6WC9uaOfK0GWMNzWEYb11hHIyEYGQOKBvajreE------
