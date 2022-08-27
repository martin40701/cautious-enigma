variable "cluster_name" {
  description = "Value of the Kubernetes Cluster Name"
  type        = string
}
variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to use"
}

variable "subnet_ids" {
  description = "The Subnet IDs to use"
}

