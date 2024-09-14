### VPC ###
output "vpc_id" {
  value       = module.vpc.vpc_id
}
output "vpc_private_subnets_id" {
  value       = module.vpc.private_subnets
}
output "vpc_public_subnets_id" {
  value       = module.vpc.public_subnets
}
output "vpc_private_subnets_cidr_blocks" {
  value       = module.vpc.private_subnets_cidr_blocks
}
output "vpc_public_subnets_cidr_blocks" {
  value       = module.vpc.public_subnets_cidr_blocks
}