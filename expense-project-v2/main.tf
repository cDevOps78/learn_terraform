provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "instances" {
  for_each = var.instances_map
  ami           = var.ami
  instance_type = lookup(each.value, "instance_type", "nokey")
  vpc_security_group_ids = [data.aws_security_group.security_group.id]
  tags = lookup(each.value,"tags","notags")
}

resource "aws_route53_record" "www" {
  for_each = var.instances_map
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "${lookup(lookup(each.value,"tags","notags"),"Name","noname")}-dev.chaithanya.online"
  type    = "A"
  ttl     = 30
 //   records = [aws_instance.instances[each.key]["private_ip"]] [ OR ]
  records = [aws_instance.instances[each.key].private_ip]
}

