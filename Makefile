.DEFAULT_GOAL := help

.PHONY: help
help: #Doc: display this help
	@echo "$$(grep -hE '^\S+:.*#Doc:' $(MAKEFILE_LIST) | sed -e 's/:.*#Doc:\s*/:/' -e 's/^\(.\+\):\(.*\)/\1:-\ \2/' | column -c2 -t -s :)"

build_80: #Doc: Build and Tag 8.0
	docker build 8 --build-arg PHP_VERSION=8.0 -t beninho/php:8.0

build_81: #Doc: Build and Tag 8.1
	docker build 8 --build-arg PHP_VERSION=8.1 -t beninho/php:8.1

build_82: #Doc: Build and Tag 8.2 (Latest)
	docker build 8 --build-arg PHP_VERSION=8.2 -t beninho/php:8.2 -t beninho/php:latest

build_83: #Doc: Build and Tag 8.3 (BETA)
	docker build 8 --build-arg PHP_VERSION=8.3.0RC6 -t beninho/php:8.3

login: #Doc: Login on DockerHub
	docker login

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

push_all: push_80 push_81 push_82 push_83 push_latest #Doc: Push all images on Dockerhub
