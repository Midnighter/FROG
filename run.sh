#!/usr/bin/env bash

set -euo pipefail

project='https://github.com/opencobra/jeweler'

nextflow pull "${project}"

nextflow \
    -c 'local.config' \
    run "${project}" \
    -r dev \
    -profile docker \
    -params-file 'params.yaml' \
    -resume

