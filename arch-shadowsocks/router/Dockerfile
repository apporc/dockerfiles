FROM apporc/arch-shadowsocks-redir

MAINTAINER apporc <apporc@gmail.com>

LABEL arch="x86_64"

RUN mkdir -p /chnroute_file

COPY shadowsocks-redir.json /etc/shadowsocks/shadowsocks-redir.json
COPY shadowsocks.json /etc/shadowsocks/shadowsocks.json
COPY chnroute_url create_rules /chnroute_file/

RUN pacman -Sy --noconfirm iptables wget && \
    wget -i /chnroute_url -O /chnroute_file/chnroute.txt && \
    rm -rf /var/cache/pacman/pkg/

EXPOSE 1080

CMD /chnroute_file/create_rules /chnroute_file/chnroute.txt && \
    /usr/bin/ss-redir -c /etc/shadowsocks/shadowsocks-redir.json -u & && \
    /usr/bin/ss-local -c /etc/shadowsocks/shadowsocks.json &
