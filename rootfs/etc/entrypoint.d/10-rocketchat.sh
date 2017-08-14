#!/usr/bin/env bash
set -eo pipefail

declare -x ROCKETCHAT_ROOT_URL
[[ -z "${ROCKETCHAT_ROOT_URL}" ]] && ROCKETCHAT_ROOT_URL="http://localhost:3000"
