output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}

output "directory_id" {
  value = aws_directory_service_directory.aws_directory.id
}

output "directory_access_url" {
  value = aws_directory_service_directory.aws_directory.access_url
}
