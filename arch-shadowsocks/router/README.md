a shadowsocks router based on archlinux

run it with something like :
docker run --privileged=true -d --name router -p 1080:1080 -v /etc/shadowsocks:/etc/shadowsocks apporc/shadowsocks-router
