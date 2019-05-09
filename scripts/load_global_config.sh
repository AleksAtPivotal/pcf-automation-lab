#!/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

global_configs=$(cat ${SCRIPTDIR}/../config/global.yml)

for config in $global_configs; do
    echo $config
done