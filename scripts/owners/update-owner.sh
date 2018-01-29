#!/bin/bash

curl --include --request PATCH "http://localhost:4741/owners/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "owner": {
      "name": "'"${NAME}"'"
      "phone_number": "'"${PHONE}"'"
    }
  }'
