# the worlds shittiest readme

## build it
```
docker build -t benmoss/concourse-redis-resource:latest .
docker push benmoss/concourse-redis-resource:latest
```

## try it
```
fly -t local set-pipeline -c ./pipeline.yml -p main
```

recycle your pipeline cuz you broke things:
```
fly -t local destroy-pipeline -p main -n
fly -t local set-pipeline -c ./pipeline.yml -p main -n
fly -t local unpause-pipeline -p main
```
