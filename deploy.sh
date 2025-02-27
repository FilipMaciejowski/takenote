#!/bin/sh

# Stop script from running if there are any errors
set -e

# Docker image
IMAGE="taniarascia/takenote"

# Git version with git hash and tags (if they exist) to be used as Docker tag
GIT_VERSION=$(git describe --always --abbrev --tags --long)

# Build and tag new Docker image and push up to Docker Hub
echo "Building and tagging new Docker image: ${IMAGE}:${GIT_VERSION}"

docker build -t ${IMAGE}:${GIT_VERSION} .
docker tag ${IMAGE}:${GIT_VERSION} ${IMAGE}:latest

# Login to Docker Hub and push newest build
echo "Logging into Docker and pushing ${IMAGE}:${GIT_VERSION}"

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin
docker push ${IMAGE}:${GIT_VERSION}

# Login to DigitalOcean command line
echo "Authorizing DigitalOcean"

doctl auth init -t "${DO_ACCESS_TOKEN}"

# Decode SSH key
echo ${DO_SSH_KEY} | base64 -d > deploy_key
chmod 600 deploy_key

# Find currently running container ID
CONTAINER_ID=$(doctl compute ssh ${DROPLET} --ssh-key-path deploy_key --ssh-command 'docker ps | grep takenote | cut -d" " -f1')

# Log into Droplet, stop the currently running container and start the new one
echo "Stopping container ID ${CONTAINER_ID} and starting ${IMAGE}:${GIT_VERSION}"

doctl compute ssh ${DROPLET} --ssh-key-path deploy_key --ssh-command "docker pull ${IMAGE}:${GIT_VERSION} && 
docker stop ${CONTAINER_ID} && 
docker run --restart unless-stopped -d -p 80:5000 ${IMAGE}:${GIT_VERSION} &&
docker system prune -a -f &&
docker image prune -a -f"