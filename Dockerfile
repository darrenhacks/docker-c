#
# The base build container
#
FROM alpine:latest AS build-image
RUN apk add build-base

WORKDIR /

#
# Add build and source files.
#
COPY Makefile .
COPY main.c .

#
# Build the application.
#
RUN make

#
# Add a non-priveliged user account. I'm using a specific ID just so
# I can prove I'm running as that user inside the application.
#
RUN addgroup cuser && \
    adduser -G cuser -u 19998 -s /bin/false -D cuser && \
    cat /etc/passwd | grep cuser > /etc/passwd_cuser

#
# Construct the runtime container.
#
FROM scratch
WORKDIR /

#
# Copy the /etc/passwd file with the user I want
# to run as defined in it.
#
COPY --from=build-image /etc/passwd_cuser /etc/passwd

#
# Copy the application itself from the build
# container to the runtime container.
#
COPY --from=build-image docker-c .

USER cuser

#
# Runs the application.
#
CMD ["/docker-c"]

