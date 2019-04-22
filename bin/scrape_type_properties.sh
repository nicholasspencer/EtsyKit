#!/usr/bin/env bash

curl https://www.etsy.com/developers/documentation/reference/$1 | \
    pup 'table[id^="resource_fields"] tr:not(:first-child) json{}' | \
    jq -f bin/jq_filters/scrape_type_properties.jq | jq -s
exit 0
