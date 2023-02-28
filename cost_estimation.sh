#!/bin/bash
cost=$(infracost breakdown --path "$1" --format json)
echo "cost=$cost" >>"$GITHUB_OUTPUT"
