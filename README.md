# GitHub Action to run an omnibenchmark using miniforge (conda)

This GitHub action will run an omnibenchmark handling the software using miniforge (that is, miniconda using conda-forge).

# Usage

## Tokens

## Variables

## Example usage

```yaml
name: Run ob using miniforge
on:
  push:
    branches:
      - main

jobs:
  build:
    name: Run ob
    runs-on: ubuntu-latest
    steps:
      - name: Checkout main
        uses: actions/checkout@v2

      - name: Use action
        uses: imallona/run_omnibenchmark_miniforge@dev
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          omnibenchmark_yaml: tests/Clustering.yaml
```
