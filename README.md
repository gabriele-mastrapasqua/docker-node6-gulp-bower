# docker 
base image for development environment with specific version of nodejs v6, bower, gulp and npm.

----

## 1) - build the Dockerfile

```
docker build -t node6-gulp-bower .
```

## 2) - run
run the container with an additional executable and "-it" flag to run something to do.

- run commands from the src folder:

```
docker run -it --rm --name node6-gulp-bower -v $(pwd)/.:/webapp node6-gulp-bower npm i
docker run -it --rm --name node6-gulp-bower -v $(pwd)/.:/webapp node6-gulp-bower bower --allow-root i
```


- stop development server:
```
docker stop node6-gulp-bower
```
