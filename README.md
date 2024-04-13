## Build docker image with Dockerfile
  - docker build -t my-new-site sh

## Create docker network and docker volme
  - docker network create my-new-network
  - docker volume create my-new-volume

## Run docker image 
  - docker run -d --name my-new-site-container --network my-new-network -v my-new-volume:/usr/share/nginx/html -p 8001:80 my-new-site

