#!/bin/bash

curl --include --request DELETE "http://localhost:4741/pets/${ID}" \
  --header "Authorization: Token token=${TOKEN}"
