FROM alpine:3.6
MAINTAINER Marcio Bigolin <marcio.bigolinn@gmail.com>
LABEL Description="Uma pequena imagem para você testar o poder do Eyalius"

RUN apk --update add apache2 php7-apache2 curl php7-curl php7-json  php7-openssl php7-simplexml php7-xml php7-gd php7-xdebug php7-session php7-pdo_mysql php7-mbstring mysql mysql-client 

RUN rm -f /var/cache/apk/* \
    && mkdir /run/apache2 \
    && mkdir -p /opt/utils 

RUN rm /var/www/localhost/htdocs/* \ 
    curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-4.9.1.tar.gz" \
    tar -xzf wordpress.tar.gz -C /var/www/localhost/htdocs \
    rm wordpress.tar.gz \


EXPOSE 80
