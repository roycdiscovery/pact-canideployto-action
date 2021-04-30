# pact-canideployto-action

Checks you can deploy based on target tag (usually an environment a partticipant has been deployed to).

## Example
```yml
env:
# (This just saves defining these multiple times for different pact jobs)
env:
  participant_name: "my-consumer-app"
  pact_broker: ${{ secrets.pact_broker }}
  pact_broker_ttoken: ${{ secrets.pact_broker_token }}

jobs:
  pact-can-i-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: roycdiscovery/pact-canideployto-action@v1.1
        env:
          target_tag: "prod"
```