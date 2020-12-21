#!/usr/bin/env bash

docker run   \
    --privileged  \
    -it  \
    --rm  \
    -v ~/github/:/github \
    -v ~/mygit/:/mygit \
    --name ubuntu18.04_vxl \
    ubuntu18.04_vxl
