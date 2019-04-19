#!/usr/bin/env bash

cat $1 | jq --compact-output -s --argjson blacklist $2 '[ .[].results[].type? ] | unique | map( select( . as $in | $blacklist | all(. != $in) ) )'
exit 0
