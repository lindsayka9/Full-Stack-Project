#!/bin/bash

curl --include --request PATCH "http://localhost:4741/pets/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "pet": {
      "name": "'"${NAME}"'",
      "species": "'"${SPECES}"'",
      "age": "'"${AGE}"'",
      "color": "'"${COLOR}"'",
      "gender": "'"${GENDER}"'",
      "owner": "'"${OWNER}"'"
    }
  }'
