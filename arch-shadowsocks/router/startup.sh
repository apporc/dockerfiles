#!/bin/bash

/chnroute_file/create_rules /chnroute_file/chnroute.txt
/usr/bin/ss-local -c /etc/shadowsocks/shadowsocks.json &
/usr/bin/ss-redir -c /etc/shadowsocks/shadowsocks-redir.json -u
