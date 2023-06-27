#! /bin/bash

clear
# set path to current folder
cd "$(dirname "$0")"

# build the image
# docker build -t dockeragent:latest .

# stop the container
docker container stop dockeragent-dev

# remove the container
docker container rm dockeragent-dev

# run the container
docker run \
  --detach \
  --name dockeragent-dev \
  --env-file secrets.env \
  --env AZP_TOKEN=$AZP_TOKEN \
  dockeragent:latest
