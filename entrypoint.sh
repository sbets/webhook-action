#!/bin/sh
set -eu

curl -v -X POST -H "Content-Type: application/json" --data '{ \"data\": \"$data\" }' $WEBHOOK_URL

#"{ \"data\": \"$data\" }"
