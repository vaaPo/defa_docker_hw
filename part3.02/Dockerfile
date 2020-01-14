FROM alpine:3.9
LABEL maintainer="Timo Taskinen <timo.taskinen@iki.fi>"
# from https://hub.docker.com/r/taskinen/yle-dl/dockerfile
# optimization by Paavo Muranen

RUN apk add --no-cache \
    bash \
    curl \
    ffmpeg \
    gcc \
    libxml2-dev \
    libxslt-dev \
    make \
    musl-dev \
    php7 \
    php7-bcmath \
    php7-curl \
    php7-mcrypt \
    php7-simplexml \
    py-crypto \
    py-lxml \
    py-pip \
    py-setuptools \
    python \
    python2-dev \
    rtmpdump \
    tar \
    wget && \
    pip install -U pip setuptools youtube_dl yle-dl && \
    apk del gcc make py-pip

# Sdocker run  -v "$(pwd)":/out yledl302testopt2 https://areena.yle.fi/1-50072429
# 

WORKDIR /out
ENTRYPOINT ["yle-dl"]