#!/usr/bin/env bash

# Stop the Container
docker stop effcore

# Removing the Container
docker rm effcore

# Removing the Image
docker rmi effcore

# Clearing all Caches
docker system prune -a

# Creating a new Image from Dockerfile
docker image build -t effcore .

# Launching the new Container based on the Image
docker run -d -p 8080:80 --name effcore effcore
