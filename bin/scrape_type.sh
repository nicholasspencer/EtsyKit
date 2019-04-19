#!/usr/bin/env bash

scrape_type() {
    curl https://www.etsy.com/developers/documentation/reference/$1 | pup 'table[id^="resource_fields"] tr:not(:first-child) json{}' | jq '.[] | {"property": .children[0].children[0].text, "type": .children[3].children[0].children[0].text, "secondaryType": (.children[3].children[0].text | try gsub("[\\(\\) ]"; "") catch null) }'
}

scrape_type $1
exit 0

# Produces:
# {
#   "property": "name",
#   "type": "string",
#   "secondaryType": null
# }
# {
#   "property": "uri",
#   "type": "string",
#   "secondaryType": null
# }
# {
#   "property": "params",
#   "type": null,
#   "secondaryType": null
# }
# {
#   "property": "defaults",
#   "type": null,
#   "secondaryType": null
# }
# {
#   "property": "type",
#   "type": "string",
#   "secondaryType": null
# }
# {
#   "property": "visibility",
#   "type": "string",
#   "secondaryType": null
# }
# {
#   "property": "http_method",
#   "type": "string",
#   "secondaryType": null
# }
