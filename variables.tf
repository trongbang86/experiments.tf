variable "k8s_ec2_key_name" {
  type        = string
  description = "value"
}

variable "region" {
  type        = string
  description = "aws region"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "max_elements" {
  type        = number
  description = "The total number for vpc, ec2, subnets"
}

variable "max_budget" {
  type        = number
  description = "The total budget/month"
}

variable "subscriber_email" {
  type        = string
  description = "my email"
}

variable "my_hash" {
  type        = string
  description = "This is a hash value to enable randomness"
}
