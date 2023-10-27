#!/usr/bin/env bash

set -euo pipefail

project='https://github.com/opencobra/jeweler'

nextflow pull "${project}"

nextflow \
    -c 'local.config' \
    run "${project}" \
    -r 'dev' \
    -params-file 'params.yaml' \
    -resume