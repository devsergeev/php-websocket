docker-compose = docker-compose -f ./docker/docker-compose.yml --env-file ./docker/.env

build:
	$(docker-compose) build

up:
	$(docker-compose) up -d

down:
	$(docker-compose) down

start:
	$(docker-compose) start

stop:
	$(docker-compose) stop

run = $(docker-compose) run --rm

exec = $(docker-compose) exec

bash:
	$(run) php-cli bash
