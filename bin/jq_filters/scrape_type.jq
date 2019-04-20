.[] | { 
    "property": .children[0].children[0].text, 
    "typeInformation":(.children[3].children[0].children[0].children[0].text? // .children[3].children[0].children[0].text?), 
    "secondaryInformation": (.children[3].children[0].text | try gsub("[\\(\\) ]"; "") catch null)
}