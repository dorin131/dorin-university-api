#!/bin/bash

docker build -t dorin-university-backend .
docker run -it -p 8081:8081 -v `pwd`/src:/srv/src --env environment=dev dorin-university-backend