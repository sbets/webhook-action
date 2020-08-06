#!/bin/sh
set -eu

echo $data

#json_data="{\"data\": $data}"

echo $data | jq .data.microservice

curl -v -X POST -H "Content-Type: application/json" --data "{ \"data\": \"$data\" }" $WEBHOOK_URL

#"{ \"data\": \"$data\" }"
