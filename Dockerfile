FROM ruby:2.6.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /app
WORKDIR /app
RUN rm -rf ./tmp/*
ADD ./Gemfile .
ADD ./Gemfile.lock .
#RUN bundle install
#RUN bundle update i18n
#RUN bundle update
RUN bundle install