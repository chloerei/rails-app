### base stage ###

FROM ruby:3.2.2 AS base

RUN <<EOF
apt-get update
apt-get install -y --no-install-recommends \
  libpq-dev \
  libvips42 \
  postgresql-client
EOF

RUN <<EOF
gem install bundler -v 2.4.19 && \
bundle config set --local path vendor/bundle
EOF

WORKDIR /rails

### production stage ###

FROM base AS production

COPY Gemfile Gemfile.lock /rails/

RUN bundle install

COPY . /rails/

RUN bin/rails assets:precompile
