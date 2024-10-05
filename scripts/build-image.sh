set -u # Treat unset variables as an error
: "${CONTAINER_REGISTRY:?CONTAINER_REGISTRY is not set}"
: "${VERSION:?VERSION is not set}"

# Build and tag images using Docker Compose
docker-compose -f ../docker-compose.yml build
