#!/bin/bash
echo "terraform dir: $1"
cost=$(infracost breakdown --path "$1" --format json)
echo "cost=$cost" >>"$GITHUB_OUTPUT"
