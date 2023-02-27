#!/bin/bash
cost=$(infracost breakdown --path /code/ --format json)
cost=$(echo "$cost" | jq -Rsa .)
echo "cost=$cost"
