output "private_subnets" {
  description = "Private Subnet Variable"
  value       = module.vpc.private_subnets
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.private_subnets
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.security_group_one
}