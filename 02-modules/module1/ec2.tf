resource "aws_instance" "frontend" {
  ami           = "ami-02d7fd1c2af6eead0"
  instance_type = var.instancetype
  tags = {
    Name = var.Name
  }
}

variable "Name" {}

variable "instancetype" {}

