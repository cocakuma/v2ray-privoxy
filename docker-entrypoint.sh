#!/bin/sh

nohup privoxy --no-daemon /etc/privoxy/privoxy.conf &
v2ray -config=/etc/v2ray/config.json
