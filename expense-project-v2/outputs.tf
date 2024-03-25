output "zonedetails" {
  value = data.aws_route53_zone.selected
}

output "security_group" {
  value = data.aws_security_group.security_group.id
}