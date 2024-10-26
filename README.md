# Docker C

A demonstration of a [Docker](https://www.docker.com) two-stage build of a simple 
command-line application.

## What it's for

There is almost nothing to the application. It's a *Hello World* that prints out the 
effective username and ID number of the user running the application.

The point of this repository is to show a Docker two-stage build of a C application that creates
a minimal container with a no-root user. The important bit is the [Dockerfile](./Dockerfile).

## Running the application

First, make sure Docker is installed and running.

Second, type the command

```shell
./build-and-run.sh
```

The [build-and-run.sh](./build-and-run.sh) script builds and tags the containers
and then runs it, removing the image once it's done.

