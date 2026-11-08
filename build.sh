#!/bin/sh
# Usage: ./build.sh [--push]   (builds all versions listed below)
set -eu
IMAGE=quai1rol/python-freetds
VERSIONS="3.10 3.11 3.12 3.13 3.14 3.15"
LATEST=3.15
for v in $VERSIONS; do
  tags="-t $IMAGE:$v"
  [ "$v" = "$LATEST" ] && tags="$tags -t $IMAGE:latest"
  # shellcheck disable=SC2086
  docker buildx build --builder "${BUILDER:-tt-builder}" --pull \
    --platform linux/amd64,linux/arm64 --build-arg PYTHON_VERSION="$v" $tags "$@" .
done
