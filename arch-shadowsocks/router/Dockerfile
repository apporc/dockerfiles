FROM apporc/arch-shadowsocks-redir

MAINTAINER apporc <apporc@gmail.com>

LABEL arch="x86_64"

RUN mkdir -p /chnroute_file

COPY chnroute_url create_rules /chnroute_file/
COPY startup.sh /

RUN pacman -Sy --noconfirm iptables wget iproute2 && \
    wget -i /chnroute_file/chnroute_url -O /chnroute_file/chnroute.txt && \
    rm -rf /var/cache/pacman/pkg/

EXPOSE 1080

CMD /startup.sh
