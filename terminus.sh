#!/bin/bash
set -e

: ${TERMINUS_TOKEN:=''}

if [ ! -z "${TERMINUS_TOKEN}" ]; then
  terminus auth:login -n --machine-token="$TERMINUS_TOKEN"
fi

terminus "$@"
