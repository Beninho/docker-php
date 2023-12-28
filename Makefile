## === 🐋 Docker ==============================================
login: #Doc: Login on DockerHub
	docker login

push_all: push_80 push_81 push_82 push_83 push_pdftk push_latest push_apache #Doc: Push all images on Dockerhub

## === 🐘 PHP =================================================

build_80: #Doc: Build and Tag 8.0
	docker build php/8 --build-arg PHP_VERSION=8.0 -t beninho/php:8.0

build_81: #Doc: Build and Tag 8.1
	docker build php/8 --build-arg PHP_VERSION=8.1 -t beninho/php:8.1

build_82: #Doc: Build and Tag 8.2
	docker build php/8 --build-arg PHP_VERSION=8.2 -t beninho/php:8.2

build_83: #Doc: Build and Tag 8.3 (Latest)
	docker build php/8 --build-arg PHP_VERSION=8.3 -t beninho/php:8.3 -t beninho/php:latest

build_pdftk: #Doc: Build PDFTK 8.1
	docker build php/8-pdftk --build-arg PHP_VERSION=8.1 -t beninho/php:8.1-pdftk

push_80: #Doc: Push image 8.0 on DockerHub
	docker push beninho/php:8.0

push_81: #Doc: Push image 8.1 on DockerHub
	docker push beninho/php:8.1

push_82: #Doc: Push image 8.2 on DockerHub
	docker push beninho/php:8.2

push_83: #Doc: Push image 8.3 on DockerHub
	docker push beninho/php:8.3

push_latest: #Doc: Push image latest on DockerHub
	docker push beninho/php:latest

push_pdftk:
	docker push beninho/php:8.1-pdftk



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
