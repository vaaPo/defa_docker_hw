# Filename: Dockerfile
FROM devopsdockeruh/overwrite_cmd_exercise
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

WORKDIR /usr/app
COPY . .
RUN chmod +x ./start.sh

ENTRYPOINT ["./start.sh","--clock"]






