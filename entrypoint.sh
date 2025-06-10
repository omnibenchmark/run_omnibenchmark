#!/bin/sh -l

echo "Omnibenchmarking $YAML, this might take a long time..."

env

cat "$YAML"
cat "$BACKEND"

# use case statement to make decision for rental
case "$BACKEND" in
    "miniforge")
        echo "Running using miniforge.";;
    "micromamba")
        echo "Running using micromamba.";;
    "apptainer")
        echo "Running using apptainer.";;
    *)
        echo "Invalid $BACKEND, aborting.";;
esac

mkdir -p output
cd output

touch "$BACKEND"_hello.world

echo "$YAML omnibenchmark has completed."
