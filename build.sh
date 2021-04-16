set -e

cd $(dirname "$0")

if [ -z "$DOCKER_IMAGE_NAME" ]; then
    DOCKER_IMAGE_NAME=docker-linux-sdl2
fi

docker build --pull --tag "$DOCKER_IMAGE_NAME" .