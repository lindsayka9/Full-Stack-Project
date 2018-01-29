#!/bin/bash

curl --include --request POST "http://localhost:4741/owners" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "owner": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "phone_number": "'"${PHONE}"'",
      "user_id": "'" ${USER}"'"
    }
  }'
