FROM ubuntu

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        locales sudo vim curl \
        python python3 python-pip python3-pip python3-setuptools python3-virtualenv \
        postgresql-client-common redis-tools \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && update-alternatives --remove python /usr/bin/python2 \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 10 \
    && rm -rf /root/.cache/pip/* /var/lib/apt/lists/*

RUN useradd -u 1000 -g users -m -s /bin/bash apporc
COPY configs/010_apporc-nopasswd /etc/sudoers.d/

USER apporc
COPY configs/tmux.conf /home/apporc/.tmux.conf
COPY configs/pip.conf /home/apporc/.pip/pip.conf

ENV LANG en_US.UTF-8
