module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
  name       = var.vpc_name
}

module "private_public_subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id

}

module "ec2_sg" {
  source = "./modules/security"
  name   = "ec2-sg"
  vpc_id = module.vpc.vpc_id
}

module "networking" {
  source           = "./modules/networking"
  vpc_id           = module.vpc.vpc_id
  public_subnet_id = module.private_public_subnet.public_subnet_id
  name             = "public"
}

module "ec2_public" {
  source = "./modules/ec2"

  ami                 = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = module.private_public_subnet.public_subnet_id
  availability_zone   = "us-east-1a"
  associate_public_ip = true
  security_group_ids  = [module.ec2_sg.security_group_id]

  enable_extra_volume = true
  extra_volume_size   = 50

  name = "public-ec2"
}

module "ec2_private" {
  source = "./modules/ec2"

  ami                 = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = module.private_public_subnet.private_subnet_id
  availability_zone   = "us-east-1a"
  associate_public_ip = false
  security_group_ids  = [module.ec2_sg.security_group_id]

  enable_extra_volume = false

  name = "private-ec2"
}





