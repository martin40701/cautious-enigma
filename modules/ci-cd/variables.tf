variable "private_subnet" {
  description = "Subnet object"
}
variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
}
variable "vpc_id" {
  description = "The VPC ID to use"
}
variable "security_group_id" {
  description = "The Security Group IDs to use"
}

