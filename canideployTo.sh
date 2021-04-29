#!/usr/bin/env bash

echo """
PACT_BROKER: $PACT_BROKER
PACT_BROKER_TOKEN : $PACT_BROKER_TOKEN
participant_name: $participant_name
target_tag: $target_tag
"""

docker run --rm \
 -e PACT_BROKER_BASE_URL=$PACT_BROKER \
 -e PACT_BROKER_TOKEN=$PACT_BROKER_TOKEN \
pactfoundation/pact-cli:latest \
broker can-i-deploy \
--pacticipant "$participant_name" \
--latest \
--to $target_tag