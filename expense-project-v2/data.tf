data "aws_route53_zone" "selected" {
  name         = "chaithanya.online"
}

data "aws_security_group" "security_group" {
  name = "Accept_all"
}