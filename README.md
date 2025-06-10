# GitHub Action to run an omnibenchmark

Runs an omnibenchmark.

# Usage

## Example usage

```yaml
name: Testing ob via gh actions
on:
  push:
  workflow_dispatch:

jobs:
  build:
    name: Run ob
    runs-on: ubuntu-latest 
    steps:
      - name: Use action
        uses: imallona/run_omnibenchmark@main
        with:
          yaml: tests/Clustering_conda.yaml
          backend: conda
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

```
    runs-on: self-hosted
```

to compute elsewhere, and not GitHub's runners.

## Conda envs

When using conda as backend, the `benchmarking yaml` has to specify the adequate `conda yaml` environment files. Please track these files somewhere the action can find them. For instance, [our `Clustering_conda.yml` example](https://github.com/imallona/run_omnibenchmark/blob/main/tests/Clustering_conda.yml) points to ([line 13](https://github.com/imallona/run_omnibenchmark/blob/edb3391553760ae7ff21a65a3c85121f5ad5ea1b/tests/Clustering_conda.yml#L13))

```yaml
software_backend: conda
software_environments:
  clustbench:
    description: "clustbench on py3.12.6"
    conda: envs/clustbench.yml ## <-------------------- here
```

which is available at [`envs/clustbench.yml`](https://github.com/imallona/run_omnibenchmark/blob/main/tests/envs/fcps.yml) relative (relative path) to the `Clustering_conda.yaml` file.

# Disclaimer of warranty

Omnibenchmark incorporates great FOSS components, including but not limited to: snakemake, easybuild, apptainer, lmod and git. Thank you!

Our workflow reuses actions from third party providers as well. Thank you!

Hence, and particularly when running this action on self-hosted runners: THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
