#!/bin/bash

# Build jar and misc
mvn clean install

container_name="my-ocr-scanner"
image_name="bt/schweiz-migros-beleg-ocr-scanner"

# Build image
docker build -t $image_name .

# Check if the container is already running
if docker ps -a -q --filter "name=$container_name" | grep -q .; then
    echo "Stopping and removing existing container $container_name..."
    docker stop $container_name
    docker rm $container_name
fi

# Run the container
docker run -d --name $container_name $image_name
echo "Container $container_name started."