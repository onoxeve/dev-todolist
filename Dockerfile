FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /tasklist
WORKDIR /tasklist
ADD Gemfile /tasklist/Gemfile
ADD Gemfile.lock /tasklist/Gemfile.lock
RUN bundle install
ADD . /tasklist
