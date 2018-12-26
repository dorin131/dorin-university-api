#!/bin/bash

if [ -z "${BRANCH}" ]; then
BRANCH="local"
fi

docker build -t dorin-university-backend:${BRANCH} .