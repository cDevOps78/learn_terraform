output "zonedetails" {
  value = data.aws_route53_zone.selected.zone_id
}

output "security_group" {
  value = data.aws_security_group.security_group.id
}