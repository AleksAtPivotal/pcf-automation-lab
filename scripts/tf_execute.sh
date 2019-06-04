#!/bin/bash

export foundation=$1

SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROOT=$SCRIPT/../

pushd $ROOT/terraform/terraforming-azure > /dev/null
echo terraform plan -var-file=$ROOT/foundations/$foundation/terraform.tfvars 
    -state=$ROOT/foundations/$foundation/state/terraform.tfstate

terraform plan -var-file=$ROOT/foundations/$foundation/terraform.tfvars 
    -state=$ROOT/foundations/$foundation/state/terraform.tfstate

popd > /dev/null