#!/usr/bin/env bash

docker run   \
    --privileged  \
    -it  \
    --rm  \
    -v ~/github/point-cloud:/point-cloud \
    --name ubuntu18.04_pcl \
    ubuntu18.04_pcl
