FROM alpine:3.6
MAINTAINER Marcio Bigolin <marcio.bigolinn@gmail.com>
LABEL Description="Uma pequena imagem para você testar o poder do Eyalius"

RUN apk --update add apache2 php7-apache2 curl php7-curl php7-json  php7-openssl php7-simplexml php7-xml php7-gd php7-xdebug php7-session php7-pdo_mysql php7-mbstring mysql mysql-client && rm -f /var/cache/apk/*

RUN rm -f /var/cache/apk/* \
    && mkdir /run/apache2 \
    && mkdir -p /opt/utils 


EXPOSE 80
