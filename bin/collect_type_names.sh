#!/usr/bin/env bash

cat $1 | jq -s --argjson blacklist $2 ''
exit 0
