FROM ruby:2.6.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /app
WORKDIR /app
ADD ./Gemfile .
RUN bundle install