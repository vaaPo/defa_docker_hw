# Filename: Dockerfile
FROM openjdk:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY ./mvn* ./
COPY . .

# build
RUN ./mvnw package

# Bundle app source
#COPY . .
EXPOSE 8080

CMD java -jar ./target/docker-example-1.1.3.jar
# docker build -t vaapo/spring-example-project .
# docker run -p8080:8080 vaapo/spring-example-project
# Success (http://localhost:8080/press)