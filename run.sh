#!/bin/bash
xhost +;

docker run --rm -ti -t \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $PWD/workspaces/:/workspaces/:z \
    -v $PWD/tos.sh:/tos.sh \
    -v $PWD/persist_workspaces.sh:/persist_workspaces.sh \
    tos:latest