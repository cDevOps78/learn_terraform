variable "production" {
  default = "default-production"
}

output "production" {
  value = var.production
}
