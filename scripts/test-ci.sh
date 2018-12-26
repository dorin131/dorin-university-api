#!/bin/bash

if [ -z "${BRANCH}" ]; then
BRANCH="local"
fi

docker run -it --env environment=test dorin-university-backend:$BRANCH /bin/bash -c "npm test"