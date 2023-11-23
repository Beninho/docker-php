# Images Docker PHP

## Build image docker
```
docker build `directory`
```

## Build + multiple tag (latest + version)
```
docker build 8 --build-arg PHP_VERSION=8.0 -t beninho/php:8.0
```
ou
```
docker build 8 --build-arg PHP_VERSION=8.1 -t beninho/php:8.1
```
ou
```
docker build 8 --build-arg PHP_VERSION=8.2 -t beninho/php:8.2 -t beninho/php:latest
```

## Login sur docker Hub
```
docker login
```

## Push sur dockerhub
```
docker push beninho/php:latest
```
```
docker push beninho/php:8.0
```
```
docker push beninho/php:8.1
```
