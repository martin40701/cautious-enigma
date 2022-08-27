variable "vpc_name" {
  type     = string
}
variable "cluster_name" {
  type     = string
}
variable "vpc_cidr_range" {
}
variable "region" {
  description = "Which region to use for cloud infrastructure"
  type        = string
}