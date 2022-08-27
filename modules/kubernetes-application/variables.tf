variable "cluster_name" {
  description = "Value of the Kubernetes Cluster Name"
  type        = string
}
variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
}
variable "cluster_id" {
  description = "Value of the Kubernetes Cluster ID"
}
variable "endpoint" {
  description = "Value of the Kubernetes Cluster Endpoint"
}

variable "eks_ca_data" {
  description = "Value of the Kubernetes Cluster CA Data"
}
