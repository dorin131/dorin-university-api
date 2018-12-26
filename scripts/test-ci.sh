#!/bin/bash

if [ -z "${BRANCH}" ]; then
BRANCH="local"
fi

docker build -t dorin-university-backend:${BRANCH} .
docker run -it --entrypoint "npm" -v `pwd`/test-results:/srv/test-results --env environment=prod dorin-university-backend:${BRANCH} run test-ci
