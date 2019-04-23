#!/usr/bin/env bash

curl https://www.etsy.com/developers/documentation | \
    pup 'div[id^="reference"] li a json{}' | \
    jq 'map( .text )'
    
exit 0
