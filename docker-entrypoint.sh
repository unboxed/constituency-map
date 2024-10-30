#!/bin/bash

set -e

if [ "$1" = "bash" ]; then
  exec "$@"
else
  bundle check || bundle install
  exec bundle exec "$@"
fi
