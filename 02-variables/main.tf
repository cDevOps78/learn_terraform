variable "production" {
  default = "default-production"
}

output "production" {
  value = var.production
}

output "common" {
  value = var.common
}

variable "common" {
  default = "default-common"
}