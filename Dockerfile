
from ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y

# Install developer dependencies
RUN apt-get install clang -y
RUN apt-get install cmake -y
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install zip -y
RUN apt-get install gdb -y
RUN apt-get install pkg-config -y
RUN apt-get install libsdl2-dev -y
RUN apt install libsdl2-2.0-0 -y
RUN apt install libsdl2-image-dev -y
RUN apt install libsdl2-mixer-dev -y
RUN apt install libsdl2-ttf-dev -y

# Install vcpkg package manager
RUN git clone --depth 1 https://github.com/microsoft/vcpkg
RUN ./vcpkg/bootstrap-vcpkg.sh

# Install packages for project
RUN /vcpkg/vcpkg install sdl2
RUN /vcpkg/vcpkg install sdl2pp
RUN /vcpkg/vcpkg install sdl2-mixer
RUN /vcpkg/vcpkg install sdl2-ttf
RUN /vcpkg/vcpkg install sdl2-image
RUN /vcpkg/vcpkg install sdl2-gfx