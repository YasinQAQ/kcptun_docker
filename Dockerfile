FROM alpine:latest
ENV KCP_VER 20170525
RUN \
    apk add --no-cache curl \
    && mkdir kcptun \
    && curl -fSL https://github.com/xtaci/kcptun/releases/download/v$KCP_VER/kcptun-linux-amd64-$KCP_VER.tar.gz | tar xz -C /kcptun 
WORKDIR /kcptun
CMD /kcptun/server_linux_amd64 -t $SERVER_ADD -mode fast2 & /kcptun/client_linux_amd64 -l :9527 -r 127.0.0.1:29900
