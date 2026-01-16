
resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_cidr_block
  availability_zone       = var.public_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-public"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.private_cidr_block
  availability_zone       = var.private_az
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.name}-private"
  }
}

