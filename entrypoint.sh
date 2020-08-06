#!/bin/sh
set -eu

echo $data

#json_data="{\"data\": $data}"

echo $data | jq .microservice
varr=$(echo $data | tr -d '"')
echo "{ \"data\": ${varr} }"

curl -v -X POST -H "Content-Type: application/json" --data "{ \"data\": ${varr} }" $WEBHOOK_URL

#"{ \"data\": \"$data\" }"
