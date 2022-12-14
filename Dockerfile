### base stage ###

FROM ruby:3.1.2 AS base

RUN apt-get update && apt-get install -y --no-install-recommends \
  libpq-dev \
  libvips42 \
  postgresql-client

RUN gem install bundler -v 2.3.6 && \
  bundle config set --local path vendor/bundle

WORKDIR /app

### CI stage ###

FROM base AS production

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app/

RUN bin/rails assets:precompile
