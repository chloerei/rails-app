# README

A Rails project template lets me start new projects quickly.

## Prepare

- Install Docker https://docs.docker.com/get-docker/
- Install docker-sync https://github.com/EugenMayer/docker-sync

## Usage

Clone this repo:

```
$ git clone https://github.com/chloerei/rails-app.git myapp
```

Rename App:

- Rename `App` in `config/application.rb`
- Rename `app-sync` in `docker-compose.yml` and `docker-sync`

Start docker-sync:

```
$ docker-sync start
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
