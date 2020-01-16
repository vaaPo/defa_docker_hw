# Filename: Dockerfile
FROM nginx:alpine
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

RUN apk add --update --no-cache \
    findutils \
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
RUN useradd -m app
RUN groupadd app
RUN usermod -a app app
USER app

