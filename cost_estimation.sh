#!/bin/bash
export INFRACOST_API_KEY=$1
cost=$(infracost breakdown --path /code/ --format json)
cost=$(echo "$cost" | jq -Rsa .)
echo "cost=$cost"
