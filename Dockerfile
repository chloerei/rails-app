### base stage ###

FROM ruby:3.2.2 AS base

RUN apt-get update && apt-get install -y --no-install-recommends \
  libpq-dev \
  libvips42 \
  postgresql-client

RUN gem install bundler -v 2.4.8 && \
  bundle config set --local path vendor/bundle

WORKDIR /rails

### production stage ###

FROM base AS production

COPY Gemfile Gemfile.lock /rails/

RUN bundle install

COPY . /rails/

RUN bin/rails assets:precompile
