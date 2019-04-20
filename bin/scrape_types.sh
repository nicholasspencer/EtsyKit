#!/usr/bin/env bash

cat $1 | jq -r ' .[] | [.] | @tsv' | while LINE=$'\t' read name; do ./bin/scrape_type.sh $(echo $name | tr '[:upper:]' '[:lower:]') > $2/$name.json; done
exit 0