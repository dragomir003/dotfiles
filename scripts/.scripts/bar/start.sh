#/bin/env bash

if pgrep '^polybar' > dev/null; then
    exit 0
fi

polybar main &
