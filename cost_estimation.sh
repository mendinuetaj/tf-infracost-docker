#!/bin/bash
echo "This is what I got: $INFRACOST_API_KEY"
cost=$(INFRACOST_API_KEY=$1 infracost breakdown --path /code/ --format json)
cost=$(echo "$cost" | jq -Rsa .)
echo "cost=$cost"
