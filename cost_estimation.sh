#!/bin/bash
cd "$TERRAFORM_ROOT_DIR" || exit 1
infracost breakdown --path . --format json --out-file /tmp/infracost.json
infracost comment github --path=/tmp/infracost.json \
  --repo="$GITHUB_REPOSITORY" \
  --github-api-url="$GITHUB_API_URL" \
  --pull-request="$PR_NUMBER" \
  --github-token="$PERSONAL_TOKEN" \
  --behavior=update
rm -rf .infracosts
exit $?
