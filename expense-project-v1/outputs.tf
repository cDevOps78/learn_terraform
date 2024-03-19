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

resource "null_resource" "fruit0" {
    for_each = length(data.aws_instances.data_instances.private_ips)
    provisioner "local-exec" {
    command = "echo ${each.key}"
    } 
}