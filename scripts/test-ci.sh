#!/bin/bash

if [ -z "${BRANCH}" ]; then
BRANCH="local"
fi

docker build -t dorin-university-backend:${BRANCH} .
docker run -it --entrypoint "cd /srv && npm test" --env environment=prod dorin-university-backend
