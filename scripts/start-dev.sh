#!/bin/bash

docker build -t dorin-university-backend .
docker run -it -p 8081:8081 --env environment=dev dorin-university-backend