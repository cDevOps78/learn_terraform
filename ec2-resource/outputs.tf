output "frontend_privateIP" {
    value = aws_instance.frontend.private_ip
}

output "frontend_record_name" {
    value = aws_route53_record.frontend_record.name
}