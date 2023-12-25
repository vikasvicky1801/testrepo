data "aws_vpc" "existing" {
  id = "your vpc id"
}

data "aws_subnet" "existingsubnet" {
  id = "your subnet id"
}

data "aws_subnet" "existingsubnet2" {
  id = "your subnet id"
}
