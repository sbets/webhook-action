#!/bin/sh
set -eu

json_data=$(echo $data)

echo $json_data

curl -v -H "Content-Type: application/json" -X POST -d \"${json_data}\" $WEBHOOK_URL
