#!/bin/bash

curl --include --request GET "http://localhost:4741/pets" \
  --header "Authorization: Token token=${TOKEN}"

echo
