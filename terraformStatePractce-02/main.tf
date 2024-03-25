provider "aws" {
  region = "us-east-1"
}

terraform {
   backend "s3" {
     bucket = "b78-chaitu"
     key    = "dev/state"
     region = "us-east-1"
   }
 }

variable "name" {
  default = "chaithnaya"
}

output "name" {
  value = var.name
}

output "name1" {
  value = var.name
}