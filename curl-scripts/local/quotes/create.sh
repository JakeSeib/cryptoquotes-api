#!/bin/bash

curl "http://localhost:4741/quotes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quote": {
      "text": "'"${TEXT}"'",
      "author": "'"${TEXT}"'",
      "title": "'"${TEXT}"'",
      "cipher": "abcdefghijklmnopqrstuvwxyz",
      "difficulty": "1"
    }
  }'

echo
