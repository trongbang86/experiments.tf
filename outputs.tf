output "k8s_ec2_private_key" {
  value     = module.infra.k8s_ec2_private_key
  sensitive = true
}
