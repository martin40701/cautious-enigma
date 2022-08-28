variable "vpc_name" {
  type     = string
  nullable = false
}
variable "cluster_name" {
  type     = string
  nullable = false
}
variable "vpc_cidr_range" {
  nullable = false
}
variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
  nullable = false
}