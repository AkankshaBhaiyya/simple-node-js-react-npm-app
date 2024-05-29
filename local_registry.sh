#!/bin/bash

# Set the local registry address
LOCAL_REGISTRY="localhost:5000"

# Pull the latest images from Docker Hub
docker pull postgres:latest
docker pull redis:latest
docker pull mongo:latest
docker pull mongo-express:latest

# Tag the images for the local registry
docker tag postgres:latest $LOCAL_REGISTRY/postgres:latest
docker tag redis:latest $LOCAL_REGISTRY/redis:latest
docker tag mongo:latest $LOCAL_REGISTRY/mongo:latest
docker tag mongo-express:latest $LOCAL_REGISTRY/mongo-express:latest

# Push the images to the local registry
docker push $LOCAL_REGISTRY/postgres:latest
docker push $LOCAL_REGISTRY/redis:latest
docker push $LOCAL_REGISTRY/mongo:latest
docker push $LOCAL_REGISTRY/mongo-express:latest