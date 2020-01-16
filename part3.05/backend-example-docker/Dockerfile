# Filename: Dockerfile
## 660MB FROM ubuntu:latest
## 270MB FROM node:alpine
## 1.09GB FROM node:latest  
## 319MB FROM node:slim
## 212MB FROM alpine:latest
FROM alpine:latest
#FROM node:alpine
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

RUN apk add --update --no-cache shadow npm;

#RUN apk add --no-cache shadow;
#RUN apk add --update --no-cache \
#    findutils \
#    shadow \
#    sudo \
#    wget \
#    curl \
#    gawk \
#    sed \
#    grep \
#    coreutils \
#    net-tools \
#    bind-tools \
#    diffutils \
#    iproute2 \
#    gzip \
#    tcpdump \
#    openssh \
#    util-linux;

## add mortal user
#RUN mkdir /var/mail 
RUN useradd -m app
RUN groupadd dockerapp 
RUN usermod -G dockerapp app
RUN apk del shadow;
WORKDIR /usr/src/app
RUN chown -R app:dockerapp /usr/src/app && \
    chmod -R ug+rxw /usr/src/app
#USER app


#RUN apt-get update
#RUN apt-get install -y build-essential apt-transport-https lsb-release ca-certificates curl sudo sudo traceroute net-tools dnsutils inetutils-ping
# Using Ubuntu
#RUN sudo curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -

#RUN sudo apt-get install -y nodejs
#RUN node -v && npm -v

## add mortal user
#RUN useradd -m app
#RUN groupadd dockerapp
#RUN usermod -G dockerapp app


#WORKDIR /usr/src/app
#RUN chown -R app:dockerapp /usr/src/app
#RUN chmod u+rxw /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY ./package*json ./

COPY --chown=app:dockerapp ./package*json ./

RUN npm install

# If you are building your code for production
# RUN npm ci --only=production


# Bundle app source
COPY --chown=app:dockerapp . .
#RUN chown app:dockerapp logs.txt
USER app

EXPOSE 8000
#ENV FRONT_URL=http://localhost:5000
#ENV FRONT_URL=http://frontend:5000
#VOLUME /logs

## strangely these eat both 48.1MB 
##RUN chown -R app:dockerapp .
##RUN chown -R app:dockerapp ./*
##USER app


CMD npm start
#20200113 this start wont work
#CMD FRONT_URL=http://frontend:5000 npm start


#docker build -t vaapo/backend-example-docker .
#docker run -it -v $(pwd)/logs.txt:/usr/src/app/logs.txt -p8000:8000 vaapo/backend-example-docker

#$ curl http://localhost:8000/
## Port configured correctly, generated message in logs.txt