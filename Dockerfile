FROM alpine:3.14

RUN apk add --no-cache python3 \
    ansible

RUN mkdir -p /vault /locker /script
WORKDIR /vault

COPY vault/* /vault/
COPY .bashrc /root
COPY encrypt.sh /script

RUN chmod u+x /script/encrypt.sh
