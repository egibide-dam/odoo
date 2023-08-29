#!make

ifneq (,$(wildcard ./.env))
    include .env
    export
else
$(error No se encuentra el fichero .env)
endif

help: _header
	${info }
	@echo Opciones:
	@echo ---------------------------------
	@echo start / stop / restart / stop-all
	@echo logs
	@echo workspace
	@echo stats
	@echo clean
	@echo ---------------------------------

_header:
	@echo ----
	@echo Odoo
	@echo ----

_urls: _header
	${info }
	@echo ---------------------------------
	@echo [Odoo] http://localhost:8069
	@echo ---------------------------------

_start-command:
	@docker compose up -d --remove-orphans

start: _header _start-command _urls

stop:
	@docker compose stop

restart: stop start

stop-all:
	@docker stop $(shell docker ps -aq)

logs:
	@docker compose logs web

workspace:
	@docker compose exec web /bin/bash

stats:
	@docker stats

clean:
	@docker compose down -v --remove-orphans
