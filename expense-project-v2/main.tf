#resource "aws_instance" "instances" {
#  for_each = var.instances_map
#  ami           = "ami-05f020f5935e52dc4"
#  instance_type = lookup(each.value, "instance_type", "nokey")
#  tags = lookup(each.value,"tags","notags")
#}

output "zonedetails" {
  value = data.aws_route53_zone.selected
}
