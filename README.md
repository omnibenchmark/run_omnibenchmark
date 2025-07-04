# GitHub Action to run an omnibenchmark

Runs an [omnibenchmark](https://omnibenchmark.org) using GitHub actions.

# Usage

## Example usage

```yaml
name: Testing ob via gh actions
on:
  push:
  workflow_dispatch:

jobs:
  build:
    name: Run ob                                     ## the name of the run
    runs-on: ubuntu-latest                           ## using the latest ubuntu(docker) GH runner
    steps:
      - name: Checkout                               ## to checkout the tested repo
        uses: actions/checkout@v4

      - name: Use action                             ## to run the benchmark specified within... 
        uses: omnibenchmark/run_omnibenchmark@main
        with:
          yaml: tests/Clustering_conda.yaml          ##  this yaml
          backend: conda                             ## using `conda` as software management strategy
```

## Input variables

### `yaml`

An omnibenchmark YAML. Required without default.

### `backend`

The software backend to use. Either `conda` or `apptainer`. Defaults to `conda`.

## `cores`

How many concurrent benchmarking tasks to run. Defaults to `1` (numeric).

## `omnibenchmark_branch`

Which github.com/omnibenchmark/omnibenchmark branch to use. Defaults to `main`.

## `conda_handler`

When using `conda` as a `backend`, the conda capabilities wrapper. Either `micromamba` or `miniforge`. Defaults to `micromamba`.

# Notes

## Own runners

You might want to register your own runners and not use the 

```yaml
    runs-on: ubuntu-latest
```

directive but rather

```yaml
    runs-on: self-hosted
```

to compute elsewhere, and not GitHub's runners.

# Disclaimer of warranty

Omnibenchmark incorporates great FOSS components, including but not limited to: snakemake, easybuild, apptainer, lmod and git. Thank you!

Our workflow reuses actions from third party providers as well. Thank you!

Hence, and particularly when running this action on self-hosted runners: THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
