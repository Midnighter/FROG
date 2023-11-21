#!/usr/bin/env bash

set -euo pipefail

project='https://github.com/opencobra/jeweler'

nextflow pull "${project}"

nextflow \
    -c 'local.config' \
    run "${project}" \
    -r '1.0.2' \
    -profile docker \
    -params-file 'params.yaml' \
    -resume

