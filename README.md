# pact-canideployto-action

Checks you can deploy based on target tag (usually an environment a partticipant has been deployed to).

## Example
```yml
# (This just saves defining these multiple times for different pact jobs)
env:
  participant_name: "my-consumer-app"
  pact_broker: ${{ secrets.PACT_BROKER }}
  pact_broker_token: ${{ secrets.PACT_BROKER_TOKEN }}

jobs:
  pact-can-i-deploy-latest:
    runs-on: ubuntu-latest
    steps:
      - uses: roycdiscovery/pact-canideployto-action@v1.0
        env:
          to: "test"
  
  # or ...
  pact-can-i-deploy-specific:
    runs-on: ubuntu-latest
    steps:
      - uses: roycdiscovery/pact-canideployto-action@v1.0
        env:
          version: "1.0.1"
          to: "test"
  
  # or ...
  pact-can-i-move-upstream:
    runs-on: ubuntu-latest
    steps:
      - uses: roycdiscovery/pact-canideployto-action@v1.0
        env:
          latest: "test"
          to: "stage"
```