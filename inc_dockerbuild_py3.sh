#!/bin/bash

if [[ ! $VERSION ]]; then
    echo 'VERSION parameter missing'
    exit 1
fi

SENTRY_IMAGE=incoresentry:$VERSION-py3
docker build --no-cache --build-arg PY_VER=3.6.10 --build-arg SOURCE_COMMIT=$VERSION -t $SENTRY_IMAGE -f ./docker/Dockerfile .
