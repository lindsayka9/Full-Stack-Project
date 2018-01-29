#!/bin/bash

curl --include --request GET "http://localhost:4741/owners" \
  --header "Authorization: Token token=${TOKEN}"

echo
