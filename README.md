You will find this useful if you need a Docker container to run your Rails application in. It includes things like headless Chrome browser, to support Rails 5 system/integration testing.

## Usage

In your own `Dockerfile`, inhering from this image like so:

```
FROM klevo/docker-ubuntu-ruby-chrome

# Then you can do something like:
WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

# When launching the container, mount your build/dev directory to /app
WORKDIR /app
```

The above will provide you with an image that will only need to be rebuild if your Gemfile changes, giving you fast builds in a CI scenario for example.

## To-do

- [ ] Get some tags going on docker hub and explain in README
