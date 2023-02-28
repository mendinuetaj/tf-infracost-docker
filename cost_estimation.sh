#!/bin/bash
find /code
cost=$(infracost breakdown --path /code/ --format json)
cost=$(echo "$cost" | jq -Rsa .)
echo "cost=$cost" >>"$GITHUB_OUTPUT"
