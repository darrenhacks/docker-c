#! /bin/sh

## Builds and tags the container
docker build . -t io.darrenhacks/docker-c:1.0

## Runs the image and removes the container once complete.
docker run --rm io.darrenhacks/docker-c:1.0

