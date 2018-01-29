#!/bin/bash

curl --include --request POST "http://localhost:4741/owners" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "owner": {
      "name": "'"${NAME}"'",
      "phone_number": "'"${PHONE}"'",
      "user_id": "'" ${USER}"'"
    }
  }'
