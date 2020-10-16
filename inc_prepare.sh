#!/bin/bash

if [[ ! $VERSION ]]; then
    echo 'VERSION parameter missing'
    exit 1
fi

BUILDER_IMAGE=incoresentry-builder:$VERSION
SOURCE_COMMIT=$VERSION docker build -t $BUILDER_IMAGE -f ./docker/builder.dockerfile .
docker run --rm --name incoresentry_builder -v $(pwd):/workspace $BUILDER_IMAGE
