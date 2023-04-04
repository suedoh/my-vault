FROM alpine:3.14
#RUN apk add --no-cache mysql-client
#ENTRYPOINT ["mysql"]
RUN apk add --no-cache python3 \
    ansible

RUN mkdir -p /vault
WORKDIR /vault

COPY vault/* /vault
COPY .bashrc /root
