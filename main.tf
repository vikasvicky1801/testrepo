
resource "aws_directory_service_directory" "aws_directory" {
  name     = var.directory_name
  password = random_password.ad_password.result
  size     = var.size
  edition  = var.edition
  type     = var.type

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_id
  }
}

resource "random_password" "ad_password" {
  length  =  10
  special = true
  upper   = true
  lower   = true
  numeric = true
}
