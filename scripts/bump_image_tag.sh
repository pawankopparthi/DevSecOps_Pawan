#!/usr/bin/env bash
set -euo pipefail
IMAGE="$1"
VALUES_FILE="$2"
repo="${IMAGE%:*}"
tag="${IMAGE##*:}"
yq -i '.image.repository = strenv(repo)' "$VALUES_FILE"
yq -i '.image.tag = strenv(tag)' "$VALUES_FILE"
echo "Updated $VALUES_FILE with image=$repo tag=$tag"
