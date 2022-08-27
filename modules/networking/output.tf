
output "private_subnets" {
  description = "Outputs all subnet ids as an array."
  value = ["${module.vpc.private_subnets.*.id}"]
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "security_group" {
  description = "Security Group ID"
  value       = aws_security_group.security_group_one.id
}