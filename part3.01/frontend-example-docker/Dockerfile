# Filename: Dockerfile
FROM ubuntu:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
#RUN apt-get update
#RUN apt-get install -y build-essential apt-transport-https lsb-release ca-certificates curl sudo traceroute net-tools dnsutils inetutils-ping

RUN apt-get update && apt-get install -y \
    build-essential apt-transport-https lsb-release ca-certificates curl sudo && \ 
    sudo curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && \
    sudo apt-get install -y nodejs && \
    node -v && npm -v && \
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* 


# Using Ubuntu
#RUN sudo curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
#RUN sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#RUN sudo apt-get install -y nodejs
#RUN node -v && npm -v
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./package*json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
EXPOSE 5000

# cors
#ENV API_URL=http://localhost:8000
CMD npm start
#ENV API_URL=http://backend:8000
#CMD API_URL=http://backend:8000 npm start
#ENV API_URL=http://localhost:8000
#CMD API_URL=http://localhost:8000 npm start


## Exercise 1.10 -> to run the project

# docker build -t vaapo/frontend-example-docker .
# docker run -p5000:5000 vaapo/frontend-example-docker
