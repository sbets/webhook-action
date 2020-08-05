#!/bin/sh
set -eu

echo $data

curl -v -H "Content-Type: application/json" -X POST -d "{ \"data\": \"${data}\" }" $WEBHOOK_URL
