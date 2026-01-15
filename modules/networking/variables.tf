variable "vpc_id" {
  description = "VPC ID"
  type        = string
}


variable "subnet_id" {
  description = "Public subnet ID to associate with route table"
  type        = string
}


variable "name" {
  description = "Name prefix for networking resources"
  type        = string
  default     = "public-network"
}
