# Use ":xenial" to have the same versin of Ubuntu as heroku-16 stack
# use ":18.04" for a new minimal Ubuntu container: https://blog.ubuntu.com/2018/07/09/minimal-ubuntu-released
FROM ubuntu:18.04

# date +%s
# This is a Dockerfile trick that allows you to just update this ENV variable for the whole image to be rebuild from scratch. This is useful when you want to ensure we're using all the latest packages.
ENV UPDATED_AT 1532504374
ENV LANG=en_US.UTF-8

# Update the numbers here if we're upgrading Ruby version
ENV RUBY_VERSION=2.5.1
ENV RUBY_VERSION_DIR=2.5

# Install all base packages and dependecies
RUN set -xe && \
  apt-get update -qq && \
  apt-get install -y \
  openssl libssl-dev curl locales-all wget \
  build-essential libpq-dev nodejs \
  libmagickwand-dev imagemagick \
  zlib1g-dev \
  cmake \
  ca-certificates socat \
  git \
  software-properties-common \
  libreadline-dev

# Install Ruby from source
WORKDIR /tmp
RUN wget https://cache.ruby-lang.org/pub/ruby/$RUBY_VERSION_DIR/ruby-$RUBY_VERSION.tar.gz && tar xvf ruby-$RUBY_VERSION.tar.gz
WORKDIR /tmp/ruby-$RUBY_VERSION
RUN echo "gem: --no-document" > $HOME/.gemrc && \
  ./configure --disable-install-doc && \
  make && \
  make install && \
  gem install bundler && \
  rm -rf /tmp/ruby*

# Add Chrome apt repository
RUN curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

# Install Chrome (useful for integration testing of Rails apps for example)
RUN apt-get update -qq && apt-get install -y \
  google-chrome-stable \
  # Postgres is used for connecting to Postgres databases
  postgresql-client \
  # Clean up caches (saves space)
  && rm -rf /var/lib/apt/lists/*
