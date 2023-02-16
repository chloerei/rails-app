# README

A Rails project template lets me start new projects quickly.

## Feature

- Docker
- dotenv
- PosgreSQL
- Redis
- Github Actions
- Brakeman
- All other Rails default stack

## Prepare

- Install Docker https://www.docker.com/products/docker-desktop/

## Usage

Clone this repo:

```
$ git clone https://github.com/chloerei/rails-app.git myapp
```

Build and install dependency:

```
$ docker compose run --rm web bin/setup
```

Start dev server:

```
$ docker compose up
```

Open console:

```
$ docker compose run --rm web bash
```
