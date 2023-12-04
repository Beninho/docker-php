# Docker Images

## PHP 🐘

### Versions available:

    - PHP :

[https://hub.docker.com/r/beninho/php/tags]

Sources to build php 7.4, 8.0, 8.1, 8.2, 8.3

### Build image docker
```
docker build `directory`
```

### Build + multiple tag (latest + version)
```
docker build 8 --build-arg PHP_VERSION=8.0 -t beninho/php:8.0
```
ou
```
docker build 8 --build-arg PHP_VERSION=8.1 -t beninho/php:8.1
```
ou
```
docker build 8 --build-arg PHP_VERSION=8.2 -t beninho/php:8.2
```
ou
```
docker build 8 --build-arg PHP_VERSION=8.3 -t beninho/php:8.3 -t beninho/php:latest
```

### Login on docker Hub
```
docker login
```

### Push tag on dockerhub
```
docker push beninho/php:latest
```
```
docker push beninho/php:8.0
```
```
docker push beninho/php:8.1
```

## 🪶 Apache
