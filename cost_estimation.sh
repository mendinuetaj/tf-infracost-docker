#!/bin/bash
cost=$(INFRACOST_API_KEY=$1 infracost breakdown --path /code/ --format json)
cost=$(echo "$cost" | jq -Rsa .)
echo "cost=$cost"
