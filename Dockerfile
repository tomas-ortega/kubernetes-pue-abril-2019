FROM ubuntu:18.04

LABEL MAINTAINER="Tomy"

RUN apt-get update \
    && apt-get install nginx -y \
    && echo '<marquee>Hello From Pue!!!</marquee>' \
        > /var/www/html/index.html

EXPOSE 80

ENV DATABASE_IP=10.0.9.4
ENV DATABASE_NAME=pakitodb

WORKDIR /var/www/html