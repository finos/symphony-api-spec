#!/usr/bin/env bash

POSTMAN_API_KEY=$1

# Existing environment and collection created manually under the devx@symphony.com account
ENVIRONMENT_ID=15539217-b19885f5-9d2e-4acc-8603-7bb90bbed307
COLLECTION_ID=15539217-e9bea678-8642-47da-adf7-a33c08c84b1d

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cat $DIR/Develop2.postman_environment.json \
  | jq '{"environment": .}' \
  | curl -XPUT -H "X-API-Key: $POSTMAN_API_KEY" https://api.getpostman.com/environments/$ENVIRONMENT_ID -H "Content-Type: application/json" -d @-


# This call might return a 500 but will still update the collection
cat $DIR/Symphony_REST_APIs.postman_collection.json \
  | jq '{"collection": .}' \
  | curl -XPUT -H "X-API-Key: $POSTMAN_API_KEY" https://api.getpostman.com/collections/$COLLECTION_ID -H "Content-Type: application/json" -d @-

echo "Collection and environment updated on Postman, check: https://documenter.getpostman.com/view/15539217/TzJycvXS"
