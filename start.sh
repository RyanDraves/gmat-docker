#!/bin/bash

set -e

# This is probably not a great command to run, but it works and I forgot how to
# property configure X11 forwarding.
xhost +

docker compose build
docker compose up -d
docker exec -it gmat /bin/bash
