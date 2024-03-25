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

resource "null_resource" "names" {
  provisioner "local-exec" {
    command = "echo my Name is :- ${var.name}"
  }
}
