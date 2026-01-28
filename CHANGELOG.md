# Changelog

## [unreleased]

- Add extra args as argument to the YAML, so singularity / ob calls can be tuned
- Export $SINGULARITY_HOME = ${{ github.workspace }}
- Upload `out` as artifacts even after `ob run` failure

## [0.2.0] Added compatibility with omnibenchmark 0.4.x

Replaced CLI calls and test YAMLs to be compatible with ob 0.4.0, which changed its CLI for `ob run`.

## [0.1.2] Fixes

Several fixes

## [0.1.0] Initial Release
- First public version of the GitHub Action.
- Ability to:
  - install Miniforge,
  - create and activate the Omnibenchmark environment,
  - run `ob run` on a benchmark YAML file.
