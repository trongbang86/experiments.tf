variable "common" {
  type = object({
    region           = string
    k8s_ec2_key_name = string
    instance_type    = string
    max_elements     = number
    max_budget       = number
    subscriber_email = string
    my_hash          = string

  })
}
