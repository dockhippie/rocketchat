#!/usr/bin/env bash
set -eo pipefail

declare -x ROCKETCHAT_MONGO_TIMEOUT
[[ -z "${ROCKETCHAT_MONGO_TIMEOUT}" ]] && ROCKETCHAT_MONGO_TIMEOUT="30"

declare -x ROCKETCHAT_MONGO_TEST_FAIL
[[ -z "${ROCKETCHAT_MONGO_TEST_FAIL}" ]] && ROCKETCHAT_MONGO_TEST_FAIL="true"

declare -x ROCKETCHAT_MONGO_HOST
[[ -z "${ROCKETCHAT_MONGO_HOST}" ]] && ROCKETCHAT_MONGO_HOST="db"

declare -x ROCKETCHAT_MONGO_PORT
[[ -z "${ROCKETCHAT_MONGO_PORT}" ]] && ROCKETCHAT_MONGO_PORT="27017"

declare -x ROCKETCHAT_MONGO_USERNAME
[[ -z "${ROCKETCHAT_MONGO_USERNAME}" ]] && ROCKETCHAT_MONGO_USERNAME=""

declare -x ROCKETCHAT_MONGO_PASSWORD
[[ -z "${ROCKETCHAT_MONGO_PASSWORD}" ]] && ROCKETCHAT_MONGO_PASSWORD=""

declare -x ROCKETCHAT_MONGO_DATABASE
[[ -z "${ROCKETCHAT_MONGO_DATABASE}" ]] && ROCKETCHAT_MONGO_DATABASE="rocketchat"
