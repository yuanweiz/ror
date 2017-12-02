FROM ruby:2.3.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /build
RUN mkdir /ror
WORKDIR /build
ADD Gemfile /build/Gemfile
ADD Gemfile.lock /build/Gemfile.lock
RUN bundle install
WORKDIR /ror
RUN gem install byebug
RUN gem install bcrypt
