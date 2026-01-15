

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-07ff62358b87c7116"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
  type        = string
}

variable "name" {
  description = "Name tag for EC2 instance"
  type        = string
  default     = "default-ec2"
}
