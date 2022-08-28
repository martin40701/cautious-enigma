variable "subnet_ids" {
  description = "Subnet object"
  nullable = false
}
variable "flattended_subnet_ids" {
  description = "flattended subnect ids for IAM"
  nullable = false
}

variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
  nullable = false
}
variable "vpc_id" {
  description = "The VPC ID to use"
  nullable = false
}
variable "security_group" {
  description = "The Security Group IDs to use"
  nullable = false
}

