#!/usr/bin/env bash

for SERVICE in $(cat ./removables)
do
  echo "Stopping/masking ${SERVICE}"
  systemctl stop ${SERVICE}
  systemctl mask ${SERVICE}
done
