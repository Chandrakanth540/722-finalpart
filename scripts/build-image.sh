set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Build and tag images using Docker Compose
docker-compose -f ../docker-compose.yml build
