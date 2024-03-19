data "aws_instances" "data_instances" {
     instance_tags = {
    monitor = "yes"
  }
}

output "data_instances" {
    value = data.aws_instances.data_instances
}