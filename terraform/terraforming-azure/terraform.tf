module "terraforming-azure" {
  source                = "git::https://github.com/alekssaul/terraforming-azure.git//terraforming-pas?ref=v0.40.1"
  client_id             = "${var.client_id}"
  client_secret         = "${var.client_secret}"
  dns_suffix            = "${var.dns_suffix}"
  env_name              = "${var.env_name}"
  location              = "${var.location}"
  ops_manager_image_uri = "${var.ops_manager_image_uri}"
  subscription_id       = "${var.subscription_id}"
  tenant_id             = "${var.tenant_id}"
  dns_subdomain         = "${var.dns_subdomain}"
}

variable "client_id" {}
variable "client_secret" {}
variable "dns_suffix" {}
variable "env_name" {}
variable "location" {}
variable "ops_manager_image_uri" {}
variable "subscription_id" {}
variable "tenant_id" {}
variable "dns_subdomain" {}
