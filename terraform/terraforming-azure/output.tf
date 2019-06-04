output "iaas" {
  value = "azure"
}

output "client_secret" {
  sensitive = true
  value     = "${module.terraforming-azure.client_secret}"
}

output "web_lb_name" {
  value = "${module.terraforming-azure.web_lb_name}"
}

output "diego_ssh_lb_name" {
  value = "${module.terraforming-azure.diego_ssh_lb_name}"
}

output "mysql_lb_name" {
  value = "${module.terraforming-azure.mysql_lb_name}"
}

output "tcp_lb_name" {
  value = "${module.terraforming-azure.tcp_lb_name}"
}

output "network_name" {
  value = "${module.terraforming-azure.network_name}"
}

output "infrastructure_subnet_name" {
  value = "${module.terraforming-azure.infrastructure_subnet_name}"
}

output "infrastructure_subnet_cidr" {
  value = "${module.terraforming-azure.infrastructure_subnet_cidr}"
}

output "infrastructure_subnet_gateway" {
  value = "${module.terraforming-azure.infrastructure_subnet_gateway}"
}

# TODO(cdutra): PAS

output "pas_subnet_name" {
  value = "${module.terraforming-azure.pas_subnet_name}"
}

output "pas_subnet_cidr" {
  value = "${module.terraforming-azure.pas_subnet_cidr}"
}

output "pas_subnet_gateway" {
  value = "${module.terraforming-azure.pas_subnet_gateway}"
}

output "services_subnet_name" {
  value = "${module.terraforming-azure.services_subnet_name}"
}

output "services_subnet_cidr" {
  value = "${module.terraforming-azure.services_subnet_cidr}"
}

output "services_subnet_gateway" {
  value = "${module.terraforming-azure.services_subnet_gateway}"
}

output "pcf_resource_group_name" {
  value = "${module.terraforming-azure.pcf_resource_group_name}"
}

output "ops_manager_security_group_name" {
  value = "${module.terraforming-azure.ops_manager_security_group_name}"
}

output "bosh_deployed_vms_security_group_name" {
  value = "${module.terraforming-azure.bosh_deployed_vms_security_group_name}"
}

output "bosh_root_storage_account" {
  value = "${module.terraforming-azure.bosh_root_storage_account}"
}

output "bosh_root_storage_account_access_key" {
  value = "${module.terraforming-azure.bosh_root_storage_account_access_key}"
}


output "ops_manager_storage_account" {
  value = "${module.terraforming-azure.ops_manager_storage_account}"
}

output "ops_manager_storage_account_access_key" {
  value = "${module.terraforming-azure.ops_manager_storage_account_access_key}"
}

output "cf_storage_account_name" {
  value = "${module.terraforming-azure.cf_storage_account_name}"
}

output "cf_storage_account_access_key" {
  sensitive = true
  value     = "${module.terraforming-azure.cf_storage_account_access_key}"
}

output "cf_droplets_storage_container" {
  value = "${module.terraforming-azure.cf_droplets_storage_container}"
}

output "cf_packages_storage_container" {
  value = "${module.terraforming-azure.cf_packages_storage_container}"
}

output "cf_resources_storage_container" {
  value = "${module.terraforming-azure.cf_resources_storage_container}"
}

output "cf_buildpacks_storage_container" {
  value = "${module.terraforming-azure.cf_buildpacks_storage_container}"
}

output "ops_manager_ssh_public_key" {
  sensitive = true
  value     = "${module.terraforming-azure.ops_manager_ssh_public_key}"
}

output "ops_manager_ssh_private_key" {
  sensitive = true
  value     = "${module.terraforming-azure.ops_manager_ssh_private_key}"
}

output "ops_manager_private_ip" {
  value = "${module.terraforming-azure.ops_manager_private_ip}"
}

output "management_subnet_name" {
  value = "${module.terraforming-azure.infrastructure_subnet_name}"
}

output "management_subnets" {
  value = ["${module.terraforming-azure.infrastructure_subnet_name}"]
}

output "management_subnet_cidrs" {
  value = ["${module.terraforming-azure.infrastructure_subnet_cidrs}"]
}

output "management_subnet_gateway" {
  value = "${module.terraforming-azure.infrastructure_subnet_gateway}"
}

output "infrastructure_subnet_cidrs" {
  value = "${module.terraforming-azure.infrastructure_subnet_cidrs}"
}

output "pas_subnet_cidrs" {
  value = "${module.terraforming-azure.pas_subnet_cidrs}"
}

output "services_subnet_cidrs" {
  value = "${module.terraforming-azure.services_subnet_cidrs}"
}

output "services_subnets" {
  value = ["${module.terraforming-azure.services_subnet_name}"]
}

output "infrastructure_subnets" {
  value = ["${module.terraforming-azure.infrastructure_subnet_name}"]
}

output "pas_subnets" {
  value = ["${module.terraforming-azure.pas_subnet_name}"]
}
