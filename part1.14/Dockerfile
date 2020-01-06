# Filename: Dockerfile
FROM ruby:2.6-alpine
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

RUN apk update
RUN apk add build-base
RUN apk add --update nodejs nodejs-npm ruby-dev sqlite-dev
#libsqlite3-dev
RUN node -v && npm -v && gem -v

RUN gem install -N rails
#RUN gem install bundler:1.17.2
RUN gem install bundler

#RUN gem install sqlite3 -v '1.3.13'
WORKDIR /usr/src/app
COPY ./Gemfile /
COPY ./Gemfile.lock /
#RUN bundle install --binstubs

RUN which bundler
RUN ruby --version
RUN gem --version
RUN rails --version
RUN bundler --version
#RUN bundle update --bundler
#RUN gem pristine --all
#RUN bundle pristine

#to install all dependencies specified in the Gemfile
RUN bundle install


# build
COPY . .
RUN rails db:migrate

# Bundle app source
#COPY . .
EXPOSE 3000

CMD rails s

# docker build -t vaapo/rails-example-project .
# docker run -p3000:3000 vaapo/rails-example-project
# curl http://localhost:3000
# 3 presses
# 2020-01-02 21:01:18 UTC 	Destroy
# 2020-01-02 21:01:12 UTC 	Destroy
# 2020-01-02 21:01:11 UTC 	Destroy
# Press more