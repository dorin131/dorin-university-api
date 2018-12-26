#!/bin/bash

if [ -z "${BRANCH}" ]; then
BRANCH="local"
fi

docker build -t dorin-university-backend:${BRANCH} .
docker exec -it `docker container ps -q` bash -c "cd /srv && npm test"