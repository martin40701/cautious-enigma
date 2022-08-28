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
variable "cluster_id" {
  description = "Value of the Kubernetes Cluster ID"
  nullable = false
}
variable "endpoint" {
  description = "Value of the Kubernetes Cluster Endpoint"
  nullable = false
}

variable "eks_ca_data" {
  description = "Value of the Kubernetes Cluster CA Data"
  nullable = false
}
