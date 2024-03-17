output "frontend_data_ips" {
    value = data.aws_instances.frontend.private_ips
}

output "frontend_record_name" {
    value = aws_route53_record.frontend_record.name
}