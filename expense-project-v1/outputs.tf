data "aws_instances" "data_instances" {
     instance_tags = {
    monitor = "yes"
  }
}

output "data_instances" {
    value = data.aws_instances.data_instances
}

output "length_instances" {
  value = length(data.aws_instances.data_instances.private_ips)
}

resource "null_resource" "fruit" {
    for_each = data.aws_instances.data_instances
    provisioner "local-exec" {
    command = "echo ${each.key}"
    } 
}