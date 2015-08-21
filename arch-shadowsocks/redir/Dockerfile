FROM apporc/arch-yaourt

MAINTAINER apporc <apporc@gmail.com>

LABEL arch="x86_64"
LABEL description="mount your shadowsocks config file to /etc/shadowsocks/shadowsocks.json. \
                  Let local_port be 1080 if you want to use link between this \
                  container and others. for example, 'docker run -d -p 0.0.0.0:1080:1080 -v \
                  /etc/shadowsocks/shadowsocks.json:/etc/shadowsocks/shadowsocks.json \
                  apporc/arch-shadowsocks-redir /usr/bin/ss-[redir|local|server] -c /etc/shadowsocks/shadowsocks.json -u'"

COPY shadowsocks-libev-2.2.3-1-x86_64.pkg.tar.xz /
RUN pacman -U --noconfirm /shadowsocks-libev-2.2.3-1-x86_64.pkg.tar.xz && \
    rm -rf /var/cache/pacman/pkg/ && \
    rm -rf /shadowsocks-libev-2.2.3-1-x86_64.pkg.tar.xz 

EXPOSE 1080

VOLUME ["/var/log/"]
