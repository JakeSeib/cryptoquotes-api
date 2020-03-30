#!/bin/bash

curl "http://localhost:4741/quotes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quote": {
      "title": "'"${TITLE}"'"
    }
  }'

  echo
