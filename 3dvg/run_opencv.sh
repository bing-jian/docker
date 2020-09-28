#!/usr/bin/env bash

docker run   \
    --privileged  \
    -it  \
    --rm  \
    -v ~/github/:/github \
    -v ~/mygit/:/mygit \
    --name ubuntu18.04_opencv \
    ubuntu18.04_opencv
