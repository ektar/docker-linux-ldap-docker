#!/usr/bin/env bash

/usr/sbin/sssd -d 10 -f -D

for dock_user in $DOCKER_USERS; do
  echo $dock_user
  usermod -a -G docker $dock_user
done

service ssh start

tail -f /var/log/dmesg