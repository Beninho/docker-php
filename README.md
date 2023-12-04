# Docker Images

## 🐘 PHP - See on [DockerHub](https://hub.docker.com/r/beninho/php/tags)

### Versions available:

#### Deprecated

- 7.4
- 8.1 pdftk

#### Active

- 8.0
- 8.1
- 8.2
- 8.3



## 🪶 Apache

### Versions available:

- 2.4



## 🛟 HOW TO

### Build image docker

```
docker build `directory` -t `tagname`
```

### Login on docker Hub

```
docker login
```

### Push tag on dockerhub

```
docker push `tagname`
```

### Use in your `docker-compose.yml`

```yaml
services:
    php:
        image: beninho/php:8.3
        
    web:
        image: beninho/httpd:2.4
        ports:
            - "80:80"
```
