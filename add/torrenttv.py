# -*- coding: utf-8 -*-
'''
Torrent-tv.ru Playlist Downloader Plugin configuration file
'''
# Proxy settings.
# For example you can install tor browser and add in torrc SOCKSPort 9050
# proxies = {'http' : 'socks5h://127.0.0.1:9050','https' : 'socks5h://127.0.0.1:9050'}
# If your http-proxy need authentification - proxies = {'https' : 'https://user:password@ip:port'}

#proxies = {'http' : 'socks5h://192.168.1.1:9100', 'https' : 'socks5h://192.168.1.1:9100'}
proxies = None

# Insert your Torrent-tv.ru playlist URL here
url = 'http://91.92.66.82/trash/ttv-list/ttv.m3u'

# Download playlist every N minutes to keep it fresh
# 0 = disabled
updateevery = 120

# TV Guide URL
tvgurl = 'http://epg.do.am/tv.gz'

# Shift the TV Guide time to the specified number of hours
tvgshift = 0

m3uheadertemplate = u'#EXTM3U url-tvg="{}" tvg-shift={} deinterlace=1 m3uautoload=1 cache=1000\n'.format(tvgurl, tvgshift)
m3uchanneltemplate = u'#EXTINF:-1 group-title="{group}" tvg-name="{tvg}" tvg-logo="{logo}",{name}\n#EXTGRP:{group}\n{url}\n'
