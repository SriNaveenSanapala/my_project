#!/bin/bash

# Identify the running container ID or name
CONTAINER_ID=$(docker ps -qf "ancestor=571888835380.dkr.ecr.us-east-1.amazonaws.com/python-repo:latest")

# Check if a container is running
if [ -n "$CONTAINER_ID" ]; then
    # Stop the running container
    docker stop "$CONTAINER_ID"
    echo "Container stopped successfully."
else
    echo "No running container found for the specified image."
fi
