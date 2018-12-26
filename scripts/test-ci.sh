#!/bin/bash

docker exec -it `docker container ps -q` bash -c "cd /srv && npm test"