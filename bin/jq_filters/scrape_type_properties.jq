map({ 
    "name": .children[0].children[0].text, 
    "type":(.children[3].children[0].children[0].children[0].text? // .children[3].children[0].children[0].text?), 
    "genericType": (.children[3].children[0].text? // .children[3].children[0].children[0].text | try gsub("[\\(\\) ]"; "") catch null) 
})