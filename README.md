# HTTPAceProxy® https://github.com/pepsik-kiev/HTTPAceProxy

# Torrent TV IPTV

# Полностью настроен под супер помойку

# Установка

docker run -d --net=host -e PGID=0 -e PUID=0 --restart always --privileged --name=aceproxy -e TZ=Europe/Helsinki tarmets/httpaceproxy bash -c "/bin/start.sh 1000"

# 1000 - Время очистки кеша acestream в секундах

# TZ='timezone'


