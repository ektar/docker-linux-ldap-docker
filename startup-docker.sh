#!/bin/bash

for dock_user in $DOCKER_USERS; do
  echo $dock_user
  usermod -a -G docker $dock_user
done

/data/startup.sh