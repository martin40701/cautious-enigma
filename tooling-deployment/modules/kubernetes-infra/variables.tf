variable "cluster_name" {
  description = "Value of the Kubernetes Cluster Name"
  type        = string
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

variable "subnet_ids" {
  description = "The Subnet IDs to use"
  nullable = false
}

variable "security_group" {
  description = "The Security Group object to use"
  nullable = false
}