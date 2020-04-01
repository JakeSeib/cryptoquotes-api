#!/bin/bash

curl "http://localhost:4741/solved_quotes/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
