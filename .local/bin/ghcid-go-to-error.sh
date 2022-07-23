#!/usr/bin/env bash

set -o errexit
set -o pipefail
[[ "${DEBUG}" == 'true' ]] && set -o xtrace

declare op
op=$(tmux capture-pane -p -t 0 | ghcid-file-parser parse --stdin | jq -r '"+call\\ cursor(\(.line),\(.char)) \(.file)"')

if [ -n "${op}" ]; then
  tmux send-keys Escape
  tmux send-keys ":e ${op}"
  tmux send-keys Enter
  tmux send-keys 'zz'
fi
