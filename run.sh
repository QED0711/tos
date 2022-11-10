#!/bin/bash

docker run --rm -ti -t \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    tos:latest