#!/usr/bin/env bash

echo "ACTION ENV = pact_broker: $pact_broker, pact_broker : $pact_broker_token, participant_name: $participant_name, target_tag: $target_tag"

docker run --rm \
 -e PACT_BROKER_BASE_URL=$pact_broker \
 -e PACT_BROKER_TOKEN=$pact_broker_token \
pactfoundation/pact-cli:latest \
broker can-i-deploy \
--pacticipant "$participant_name" \
--latest \
--to $target_tag