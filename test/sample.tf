module "test" {
  source = "./../"

  directory_name       = "corp.notexample.com"
  edition              = "Standard"
  type                 = "MicrosoftAD"
  size                 = null
  vpc_id               = data.aws_vpc.existing.id
  subnet_id            =[data.aws_subnet.existingsubnet.id, data.aws_subnet.existingsubnet2.id] 
}
