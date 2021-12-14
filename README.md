# Images Docker PHP

## Build image docker
```
docker build `directory`
```

## Build + multiple tag (latest + version)
```
docker build 8 -t beninho/php:8.0
```
ou
```
docker build 8.1 -t beninho/php:latest -t beninho/php:8.1
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
