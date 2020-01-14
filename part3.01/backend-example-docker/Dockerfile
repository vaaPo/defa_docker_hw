# Filename: Dockerfile
FROM ubuntu:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
RUN apt-get update && apt-get install -y \
    build-essential apt-transport-https lsb-release ca-certificates curl sudo && \ 
    sudo curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && \
    sudo apt-get install -y nodejs && \
    node -v && npm -v && \
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* 

#    sudo traceroute net-tools dnsutils inetutils-ping && \

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
EXPOSE 8000
#ENV FRONT_URL=http://localhost:5000
#ENV FRONT_URL=http://frontend:5000
#VOLUME /logs

CMD npm start
#20200113 this start wont work
#CMD FRONT_URL=http://frontend:5000 npm start


#docker build -t vaapo/backend-example-docker .
#docker run -it -v $(pwd)/logs.txt:/usr/src/app/logs.txt -p8000:8000 vaapo/backend-example-docker

#$ curl http://localhost:8000/
## Port configured correctly, generated message in logs.txt