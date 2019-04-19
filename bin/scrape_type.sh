#!/usr/bin/env bash

curl https://www.etsy.com/developers/documentation/reference/$1 | pup 'table[id^="resource_fields"] tr:not(:first-child) json{}' | jq '.[] | { "property": .children[0].children[0].text, "typeInformation":(.children[3].children[0].children[0].children[0].text? // .children[3].children[0].children[0].text?), "secondaryInformation": (.children[3].children[0].text | try gsub("[\\(\\) ]"; "") catch null)}' | jq -s
exit 0
