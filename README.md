# kcptun_docker

#### kcptun-compose.yml

> change SERVER_ADD to your shadowsocks server address
```
version: '2'
services:
  kcptun:
    image: moclaf/kcptun_docker:arm
    ports:
      - "9527:9527"
    environment:
      - SERVER_ADD=*.*.*.*:8388
      _ KCP_PORT=9527
    restart: always

```
> than use this command
```
$ docker-compose -f kcptun-compose.yml up -d

Creating network "kctun_default" with the default driver
Creating kctun_kcptun_1 ...
Creating kctun_kcptun_1 ... done
```
