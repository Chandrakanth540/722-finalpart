#!/bin/bash

set -u # or set -o nounset

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "docker-compose could not be found. Please install Docker Compose."
    exit 1
fi

# Ensure required environment variables are set
: "${CONTAINER_REGISTRY:?Need to set CONTAINER_REGISTRY}"
: "${VERSION:?Need to set VERSION}"

# Build images using Docker Compose
docker-compose -f ../docker-compose.yml build
