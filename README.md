# pact-canideployto-action

Checks you can deploy based on target tag (usually an environment a partticipant has been deployed to).

## Example
```yml
env:
# (This just saves defining these multiple times for different pact jobs)
env:
  participant_name: "my-consumer-app"
  pact_broker: ${{ secrets.PACT_BROKER }}
  pact_broker_token: ${{ secrets.PACT_BROKER_TOKEN }}

jobs:
  pact-can-i-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: roycdiscovery/pact-canideployto-action@v1.0
        env:
          target_tag: "prod"
```