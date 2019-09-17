FROM ruby:2.6.3

ENV APP /jwage

RUN apt-get update -qq && \
    apt-get install -y locales
RUN sed -i 's/#.*ja_JP\.UTF/ja_JP\.UTF/' /etc/locale.gen
RUN locale-gen && \
    update-locale LANG=ja_JP.UTF-8

RUN mkdir $APP
WORKDIR $APP
COPY . $APP

RUN bundle install
