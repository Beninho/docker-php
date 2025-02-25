## === 🐋 Docker ==============================================
login: #Doc: Login on DockerHub
	docker login

push_all: push_all_php push_apache #Doc: Push all images on Dockerhub

## === 🐘 PHP =================================================

build_80: #Doc: Build and Tag 8.0
	docker build php/8 --build-arg PHP_VERSION=8.0 -t beninho/php:8.0

build_81: #Doc: Build and Tag 8.1
	docker build php/8 --build-arg PHP_VERSION=8.1 -t beninho/php:8.1

build_82: #Doc: Build and Tag 8.2
	docker build php/8 --build-arg PHP_VERSION=8.2 -t beninho/php:8.2

build_83: #Doc: Build and Tag 8.3
	docker build php/8 --build-arg PHP_VERSION=8.3 -t beninho/php:8.3

build_84: #Doc: Build and Tag 8.3 (Latest)
	docker build php/8 --build-arg PHP_VERSION=8.4 -t beninho/php:8.4 -t beninho/php:latest

build_pcov83: #Doc: Build and Tag 8.3 with pcov
	docker build php/8-pcov --build-arg PHP_VERSION=8.3 -t beninho/php:8.3-pcov

build_pcov84: #Doc: Build and Tag 8.4 with pcov
	docker build php/8-pcov --build-arg PHP_VERSION=8.4 -t beninho/php:8.4-pcov

push_80: #Doc: Push image 8.0 on DockerHub
	docker push beninho/php:8.0

push_81: #Doc: Push image 8.1 on DockerHub
	docker push beninho/php:8.1

push_82: #Doc: Push image 8.2 on DockerHub
	docker push beninho/php:8.2

push_83: #Doc: Push image 8.3 on DockerHub
	docker push beninho/php:8.3

push_84: #Doc: Push image 8.4 on DockerHub
	docker push beninho/php:8.4

push_latest: #Doc: Push image latest on DockerHub
	docker push beninho/php:latest

push_pcov:
	docker push beninho/php:8.3-pcov beninho/php:8.4-pcov

push_all_php: #Doc: Push all PHP images on Dockerhub
	docker image push --all-tags beninho/php

## === 🪶 Apache ==============================================

build_apache: #Doc: Build Apache 2.4
	docker build httpd/2.4 -t beninho/httpd:2.4 -t beninho/apache:2.4

push_apache: #Doc: Push image apache on DockerHub
	docker push beninho/apache:2.4 && \
	docker push beninho/httpd:2.4


## === 🛟 HELP =================================================

.DEFAULT_GOAL := help

.PHONY: help
help: #Doc: display this help
	@echo "$$(grep -hE '^\S+:.*#Doc:' $(MAKEFILE_LIST) | sed -e 's/:.*#Doc:\s*/:/' -e 's/^\(.\+\):\(.*\)/\1:-\ \2/' | column -c2 -t -s :)"
