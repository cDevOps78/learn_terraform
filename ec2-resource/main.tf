provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "frontend" {
    ami = "ami-05f020f5935e52dc4"
    instance_type = "t3.micro"
    tags = var.tags
}

resource "aws_route53_record" "frontend_record" {
  zone_id = "Z03998933DKS43BUYGV0L"
  name    = "frontend.chaithanya.online"
  type    = "A"
  ttl     = 30
  records = [data.aws_instances.frontend.private_ips[0]]
}