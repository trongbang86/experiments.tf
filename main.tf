locals {
  common = {
    region           = var.region
    k8s_ec2_key_name = var.k8s_ec2_key_name
    instance_type    = var.instance_type
    max_elements     = var.max_elements
    max_budget       = var.max_budget
    subscriber_email = var.subscriber_email
    my_hash          = var.my_hash
  }
}


module "init" {
  source = "./init"
  common = local.common

}

module "infra" {
  source = "./infra"
  common = local.common
}


