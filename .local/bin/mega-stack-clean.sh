#!/usr/bin/env bash

set -o errexit
set -o pipefail
[[ "${DEBUG}" == 'true' ]] && set -o xtrace

find . -type d -name ".stack-work" -prune -exec rm -rf {} \;
