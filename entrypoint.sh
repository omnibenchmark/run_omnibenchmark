#!/bin/sh -l

echo "Omnibenchmarking $YAML"

env

echo "$YAML" >> "$GITHUB_OUTPUT"
