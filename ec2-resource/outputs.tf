output "frontend_data_ips" {
    value = data.aws_instances.frontend.public_ips
}