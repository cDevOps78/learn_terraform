output "frontend_privateIP" {
    value = aws_instance.frontend.private_ip
}

output "backend_privateIP" {
    value = aws_instance.backend.private_ip
}

output "frontend_mysqlIP" {
    value = aws_instance.mysql.private_ip
}

output "frontend_record_name" {
    value = aws_route53_record.frontend_record.name
}

output "backend_record_name" {
    value = aws_route53_record.backend_record.name
}

output "mysql_record_name" {
    value = aws_route53_record.mysql_record.fqdn
}