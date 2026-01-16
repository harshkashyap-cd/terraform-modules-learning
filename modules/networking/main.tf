resource "aws_internet_gateway" "myigw" {
  vpc_id = var.vpc_id


  tags = {
    Name = "${var.name}-igw"
  }
}


resource "aws_route_table" "public" {
  vpc_id = var.vpc_id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }


  tags = {
    Name = "${var.name}-rt"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.public.id
}
