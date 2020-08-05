#!/bin/sh
set -eu

echo $data

curl -v -H "Content-Type: application/json" -X POST -d '{ "microservice":"dsign"}' $WEBHOOK_URL
