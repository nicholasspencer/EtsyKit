#!/usr/bin/env bash

scrape_type() {
    curl https://www.etsy.com/developers/documentation/reference/$1 | pup 'table[id^="resource_fields"] tr:not(:first-child) json{}' | jq '.[] | {"property": .children[0].children[0].text, "type": .children[3].children[0].children[0].text, "secondaryType": (.children[3].children[0].text | try gsub("[\\(\\) ]"; "") catch null) }'
}

scrape_type $1
exit 0