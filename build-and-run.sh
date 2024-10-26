#! /bin/sh

## Builds and tags the container
docker build . -t dev.darrencodes/docker-c:1.0

## Runs the image and removes the container once complete.
docker run --rm dev.darrencodes/docker-c:1.0

