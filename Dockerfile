FROM ubuntu:xenial

# date +%s
ENV UPDATED_AT 1528443397

RUN apt-get update -qq
RUN apt-get install -y curl
RUN set -xe \
    && curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

RUN apt-get update -qq
RUN apt-get install -y \
  build-essential libpq-dev nodejs \
  libmagickwand-dev imagemagick \
  zlib1g-dev \
  cmake \
  ca-certificates curl socat \
  xvfb x11vnc fluxbox xterm \
  google-chrome-stable \
  git

# Install Ruby
WORKDIR /tmp
RUN wget https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.1.tar.gz && tar xvf ruby-2.5.1.tar.gz
WORKDIR /tmp/ruby-2.5.1
RUN ./configure && make && make install && gem install bundler

# Preinstall some gems
# It will speed up `bundle install` for containers consuming this image
WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
