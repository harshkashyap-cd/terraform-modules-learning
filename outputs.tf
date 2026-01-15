output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "ID of the created Subnet"
  value       = module.subnet.subnet_id
}

output "ec2_instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.ec2.instance_id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = module.networking.igw_id
}

output "route_table_id" {
  description = "ID of the public Route Table"
  value       = module.networking.route_table_id
}
