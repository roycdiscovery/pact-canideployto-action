#!/usr/bin/env bash

if [ "$version" != "" ] && [ "$latest" != "" ]
then
  echo "ERROR: specify only 'version' or 'latest', not both."
  exit 1
fi

VERSION="--latest"
[ "$version" != "" ] && VERSION="--version $version"
[ "$latest" != "" ] && VERSION="--latest $latest"

echo "ACTION ENV = pact_broker: $pact_broker, pact_broker_token: $pact_broker_token, application_name: $application_name, version flag: '$VERSION', to: $to"


eval """
docker run --rm \
 -e PACT_BROKER_BASE_URL=$pact_broker \
 -e PACT_BROKER_TOKEN=$pact_broker_token \
pactfoundation/pact-cli:latest \
broker can-i-deploy \
--pacticipant "$application_name" \
$VERSION \
--to $to
"""