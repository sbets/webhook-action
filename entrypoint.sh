#!/bin/sh
set -eu

echo $data

curl -v -X POST -H "Content-Type: application/json" -d "{ \"data\": \"$data\" }" $WEBHOOK_URL
