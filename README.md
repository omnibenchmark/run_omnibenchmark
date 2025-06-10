# GitHub Action to run an omnibenchmark using miniforge (conda)

Runs an omnibenchmark using a defined software backend.

# Usage

## Tokens

## Variables

## Example usage

```yaml
name: Run test ob
on:
  push:
  workflow_dispatch:

jobs:
  build:
    name: Run ob
    runs-on: ubuntu-latest
    steps:
      - name: Checkout main
        uses: actions/checkout@v2

      - name: Use action
        uses: imallona/run_omnibenchmark@dev
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          yaml: tests/Clustering.yaml
          backend: miniforge
```
