#!/bin/sh
curl -sSL https://raw.githubusercontent.com/sgoryachkin/acestreamproxyvlc-pi/master/acestream.service > /etc/systemd/system/acestream.service
curl -sSL https://raw.githubusercontent.com/sgoryachkin/acestreamproxyvlc-pi/master/aceproxy.service > /etc/systemd/system/aceproxy.service
curl -sSL https://raw.githubusercontent.com/sgoryachkin/acestreamproxyvlc-pi/master/vlc-nox.service > /etc/systemd/system/vlc-nox.service
mkdir /etc/aceproxy
curl -sSl https://raw.githubusercontent.com/sgoryachkin/acestreamproxyvlc-pi/master/etc/torrenttv.py > /etc/aceproxy/torrenttv.py #torrent-tv acestream playlist mentioned here, http://torrent-tv.ru/c_playlist.php
curl -sSl https://raw.githubusercontent.com/sgoryachkin/acestreamproxyvlc-pi/master/etc/p2pproxy.py > /etc/aceproxy/p2pproxy.py #torrent-tv login & passwd here
systemctl daemon-reload
docker pull aaaler/aceproxy-pi 
docker pull sego/acestream-pi 
docker pull sego/vlc-nox-pi
systemctl enable aceproxy
systemctl start aceproxy
