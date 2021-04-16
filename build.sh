set -e

cd $(dirname "$0")

if [ -z "$IMAGE_NAME" ]; then
    IMAGE_NAME=docker-linux-sdl2
fi

docker build . --file Dockerfile --tag $IMAGE_NAME