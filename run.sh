#!/usr/bin/env bash

set -euo pipefail

nextflow \
    -c 'local.config' \
    run "${HOME}/Codebase/opencobra/jeweler/main.nf" \
    -params-file 'params.yaml' \
    -resume
