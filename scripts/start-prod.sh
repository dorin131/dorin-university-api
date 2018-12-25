#!/bin/bash

docker build -t dorin-university-backend .
docker run -it -p 80:8081 --env environment=prod dorin-university-backend