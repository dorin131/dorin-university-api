#!/bin/bash

if [ -z "${BRANCH}" ]; then
BRANCH="local"
fi

docker run -it -c "npm test" --env environment=test dorin-university-backend:$BRANCH