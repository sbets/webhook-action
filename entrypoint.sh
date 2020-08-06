#!/bin/sh
set -eu
#json_data=$(echo $data | sed 's/^.\(.*\).$/\1/')

#echo $json_data
echo $data
curl -v -X POST -H "Content-Type: application/json" --data $data $WEBHOOK_URL
#"{ \"data\": ${json_data} }"
