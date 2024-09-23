#!/bin/bash

set -e

xhost +
docker compose build
docker compose up -d
docker exec -it gmat /bin/bash
