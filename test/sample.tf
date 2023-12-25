module "test" {
  source = "./../"

  vpc_cidr_block       = "10.0.0.0/16"
  subnet_cidr_blocks   = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zone    = ["us-east-1a", "us-east-1b"]
  directory_name       = "corp.notexample.com"
  edition              = "Standard"
  type                 = "MicrosoftAD"
  size                 = null
  vpc_id               = data.aws_vpc.existing.id
  subnet_id            =[data.aws_subnet.existingsubnet.id, data.aws_subnet.existingsubnet2.id] 
}
