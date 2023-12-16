

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
}

variable "availability_zone" {
  description = "The AWS availability zone for the subnets"
  type        = list(string)
}

variable "directory_name" {
  description = "The name of the AWS Directory Service directory"
  type        = string
}

variable "size" {
  description = "The size of the AWS Directory Service directory (Small, Large, or LargeHD)"
  type        = string
}

variable "edition" {
  description = "The edition of the AWS Directory Service directory (Standard or Enterprise)"
  type        = string
}

variable "type" {
  description = "The type of the AWS Directory Service directory (MicrosoftAD or SimpleAD)"
  type        = string
}