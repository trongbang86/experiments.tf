output "k8s_ec2_private_key" {
  value     = tls_private_key.k8s_ec2_key.private_key_pem
  sensitive = true
}
