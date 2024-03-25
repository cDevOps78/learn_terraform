provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = var.tags
}

variable "ami" {}
variable "instance_type" {}
variable "tags" {}