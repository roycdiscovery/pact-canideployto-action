#!/usr/bin/env bash

echo """
broker_url: $broker_url
broker_token : $broker_token
participant_name: $participant_name
target_tag: $target_tag
"""

docker run --rm \
 -e PACT_BROKER_BASE_URL=$broker_url \
 -e PACT_BROKER_TOKEN=$broker_token \
pactfoundation/pact-cli:latest \
broker can-i-deploy \
--pacticipant "$participant_name" \
--latest \
--to $target_tag