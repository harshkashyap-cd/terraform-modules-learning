

variable "vpc_id" {
  description = "VPC ID where subnet will be created"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "az" {
  description = "Availability zone for subnet"
  type        = string
  default     = "us-east-1a"
}

variable "name" {
  description = "Name of the subnet"
  type        = string
  default     = "default-subnet"
}
