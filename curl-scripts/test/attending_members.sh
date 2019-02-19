#!/bin/bash

curl "http://localhost:4741/attending_members" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "attending_member": {
      "event_id": "'"${EVENT}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
