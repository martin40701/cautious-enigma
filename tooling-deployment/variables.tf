variable "cluster_name" {
  description = "Value of the Kubernetes Cluster Name"
  type        = string
  default     = "martink8sexamplecluster"
}
variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
  default     = "us-east-1"
}
variable "vpc_name" {
  description = "What the VPC name should be"
  type        = string
  default     = "ce-vpc"
}

variable "vpc_cidr_range" {
  description = "What the cidr range should be for the VPC"
  default     = "10.200.0.0/16"
}