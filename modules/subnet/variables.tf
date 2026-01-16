

variable "vpc_id" {
  description = "VPC ID where subnet will be created"
  type        = string
}

variable "public_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "private_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_az" {
  description = "AZ for public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "private_az" {
  description = "AZ for private subnet"
  type        = string
  default     = "us-east-2a"
}


variable "name" {
  description = "Name of the subnet"
  type        = string
  default     = "default-subnet"
}

