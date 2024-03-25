variable "production" {
  default = "no-production"
}

output "production" {
  value = var.production
}
