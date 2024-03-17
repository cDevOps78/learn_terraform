provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "frontend" {
    ami = "ami-05f020f5935e52dc4"
    instance_type = "t3.micro"
    tags = var.tags.frontend.frontend1
}

# resource "aws_route53_record" "frontend_record" {
#   zone_id = "Z03998933DKS43BUYGV0L"
#   name    = "frontend.chaithanya.online"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.frontend.private_ip]
# }

# resource "aws_instance" "backend" {
#     ami = "ami-05f020f5935e52dc4"
#     instance_type = "t3.micro"
#     tags = var.tags.backend
# }

# resource "aws_route53_record" "backend_record" {
#   zone_id = "Z03998933DKS43BUYGV0L"
#   name    = "backend.chaithanya.online"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.backend.private_ip]
# }

# resource "aws_instance" "mysql" {
#     ami = "ami-05f020f5935e52dc4"
#     instance_type = "t3.micro"
#     tags = var.tags.mysql
# }

# resource "aws_route53_record" "mysql_record" {
#   zone_id = "Z03998933DKS43BUYGV0L"
#   name    = "mysql.chaithanya.online"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.mysql.private_ip]
# }

