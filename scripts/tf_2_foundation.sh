#!/bin/bash

export foundation=$1

SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROOT=$SCRIPT/../

pushd $ROOT/terraform/terraforming-azure > /dev/null

# properties-configuration_iaas_configuration_bosh_storage_account_name
sed -i '' -e '/properties-configuration_iaas_configuration_bosh_storage_account_name/s/.*//' \
    $ROOT/foundations/$foundation/vars/director/manual.yml 
newvalue=$(terraform output -state $ROOT/foundations/$foundation/state/terraform.tfstate bosh_root_storage_account)
echo properties-configuration_iaas_configuration_bosh_storage_account_name : $newvalue \
    >> $ROOT/foundations/$foundation/vars/director/manual.yml

# azure_storage_account
sed -i '' -e '/azure_storage_account/s/.*//' \
    $ROOT/foundations/$foundation/vars/ops-manager/manual.yml 
newvalue=$(terraform output -state $ROOT/foundations/$foundation/state/terraform.tfstate ops_manager_storage_account)
echo azure_storage_account : $newvalue \
    >> $ROOT/foundations/$foundation/vars/ops-manager/manual.yml 

# azure_storage_account_key
sed -i '' -e '/azure_storage_key/s/.*//' \
    $ROOT/foundations/$foundation/vars/ops-manager/secrets.yml 
newvalue=$(terraform output -state $ROOT/foundations/$foundation/state/terraform.tfstate ops_manager_storage_account_access_key)
echo azure_storage_key : $newvalue \
    >> $ROOT/foundations/$foundation/vars/ops-manager/secrets.yml 

popd > /dev/null
