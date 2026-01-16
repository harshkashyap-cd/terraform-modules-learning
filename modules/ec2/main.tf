
resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id


  tags = {
    Name = var.name
  }
  associate_public_ip_address = var.associate_public_ip

}

resource "aws_ebs_volume" "extra" {
  count             = var.enable_extra_volume ? 1 : 0
  availability_zone = var.availability_zone
  size              = var.extra_volume_size
  type              = "gp3"

  tags = {
    Name = "${var.name}-data"
  }
}

resource "aws_volume_attachment" "attach" {
  count       = var.enable_extra_volume ? 1 : 0
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.extra[0].id
  instance_id = aws_instance.instance.id
}


