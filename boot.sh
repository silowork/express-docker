#!/bin/bash

# pm2 start index.js --name 'jenkins' -i 2


function boot() {
  NAME=jenkins;
  pm2 describe $NAME > /dev/null
  RUNNING=$?
  if [ "${RUNNING}" -ne 0 ]; then
    echo "start app '$NAME'..."
    pm2 start index.js --name 'jenkins' -i 2
  else
    echo "reload app '$NAME'..."
    pm2 reload $NAME -f
  fi;
}

boot