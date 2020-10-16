#!/bin/bash

if [[ ! $VERSION ]]; then
    echo 'VERSION parameter missing'
    exit 1
fi

SENTRY_IMAGE=incoresentry:$VERSION
docker build --no-cache --build-arg SOURCE_COMMIT=$VERSION -t $SENTRY_IMAGE -f ./docker/Dockerfile .
