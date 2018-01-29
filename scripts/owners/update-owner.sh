#!/bin/bash

curl --include --request PATCH "http://localhost:4741/owners/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "owner": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "phone_number": "'"${PHONE}"'"
    }
  }'
