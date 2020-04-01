#!/bin/bash

curl "http://localhost:4741/solved_quotes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "solved_quote": {
      "quote_id": "'"${QID}"'"
    }
  }'

echo
