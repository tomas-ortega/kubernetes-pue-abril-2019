FROM ubuntu:18.04

LABEL MAINTAINER="Tomy"

RUN apt-get update \
    && apt-get install nginx -y \
    && echo '<marquee>Hello From Pue!!!</marquee>' \
        > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

VOLUME ["/my-data"]