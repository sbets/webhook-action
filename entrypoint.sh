#!/bin/sh
set -eu

echo $microservice

curl -v -H "Content-Type: application/json" -X POST -d '{ \"microservice\": \"$microservice\" }' $WEBHOOK_URL
