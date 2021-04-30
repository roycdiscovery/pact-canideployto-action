# pact-canideployto-action

Checks you can deploy based on target tag (usually an environment a partticipant has been deployed to).

## Required environment variables (secrets)
- `PACT_BROKER`:  the url of your pactflow
- `PACT_BROKER_TOKEN`: your pactfllow token

## Example
```yml
  pact-can-i-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: roycdiscovery/pact-canideployto-action@v1.0
        env:
          participant_name: "my-consumer"
          target_tag: "prod"
```