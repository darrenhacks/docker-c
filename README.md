# Docker C

A demonstration of a Docker two-stage build of a simple, command-line application.

## What it's For

There is almost nothing to the application. It's a *Hello World* that prints out the 
effective user name and ID number of the application.

The point of this repository is to show a Docker two-stage build of a C application, so
the important bit is the [Dockerfile](./Dockerfile).

## Running the Application

The [build-and-run.sh](./build-and-run.sh) script builds and tags the containers
and then runs it, removing the image once it's done.