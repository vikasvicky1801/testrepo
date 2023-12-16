
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "AD-VPC"
  }
}

resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidr_blocks)

  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidr_blocks[count.index]
  availability_zone       = var.availability_zone [count.index]
  map_public_ip_on_launch = false

  tags = {
    Name = "AD-Subnet-${count.index + 1}"
  }
}

resource "aws_directory_service_directory" "aws_directory" {
  name     = var.directory_name
  password = random_password.ad_password.result
  size     = var.size
  edition  = var.edition
  type     = var.type

  vpc_settings {
    vpc_id     = aws_vpc.vpc.id
    subnet_ids = aws_subnet.subnet[*].id
  }
}

resource "random_password" "ad_password" {
  length  =  10
  special = true
  upper   = true
  lower   = true
  numeric = true
}