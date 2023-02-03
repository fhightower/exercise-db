FROM ruby:3.2.0-buster

RUN apt update && apt install -y sqlite3 libsqlite3-dev nodejs npm

WORKDIR /code

COPY ./ /code/

RUN bundle config set force_ruby_platform true
RUN /code/bin/setup
# RUN npm ci

