#!/bin/bash
echo "terraform dir: $TERRAFORM_ROOT_DIR"
cost=$(infracost breakdown --path "$TERRAFORM_ROOT_DIR" --format json)
echo "cost=$cost" >>"$GITHUB_OUTPUT"
