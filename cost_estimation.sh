#!/bin/bash
find ./
cost=$(infracost breakdown --path ./ --format json)
cost=$(echo "$cost" | jq -Rsa .)
echo "cost=$cost" >>"$GITHUB_OUTPUT"
