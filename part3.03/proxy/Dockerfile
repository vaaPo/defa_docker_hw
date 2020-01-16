# Filename: Dockerfile
FROM nginx:alpine
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

RUN apk add --update --no-cache \
    findutils \
    shadow \
    sudo \
    wget \
    curl \
    gawk \
    sed \
    grep \
    coreutils \
    net-tools \
    bind-tools \
    diffutils \
    iproute2 \
    gzip \
    tcpdump \
    openssh \
    util-linux;
## add mortal user
RUN mkdir /var/mail 
RUN useradd -m app
RUN groupadd dockerapp 
RUN usermod -G dockerapp app
RUN chown -R app:dockerapp /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R ug+rxw /var/cache/nginx /var/run /var/log/nginx
USER app

