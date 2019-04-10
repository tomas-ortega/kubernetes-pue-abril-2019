FROM ubuntu:18.04

LABEL MAINTAINER="Tomy"

RUN useradd nginx

RUN apt-get update \
    && apt-get install nginx -y \
    && echo '<marquee>Hello From Pue!!!</marquee>' \
        > /var/www/html/index.html

EXPOSE 80

COPY index.html /var/www/html

WORKDIR /var/www/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

#USER nginx