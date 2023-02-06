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

- Install Docker https://docs.docker.com/get-docker/
- Install docker-sync https://github.com/EugenMayer/docker-sync

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

## Config

### DOCKER_SYNC_NAME

If you are developing multiple projects, modify `DOCKER_SYNC_NAME` in .env to make it unique.
