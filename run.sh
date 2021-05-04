#!/bin/bash
docker build -t proxy .
docker compose up -d


while true
do
  if curl -s --head  --request GET localhost:80 | grep "200 OK" > /dev/null; then
    echo "Endpoint Up"
  else
    echo "Endpoint Down"
  fi
    sleep 10
done
