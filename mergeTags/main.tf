provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "nginx" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  tags = merge(var.tags,{
    Project = "expense"
    Teamlead = format("%s",var.teamlead)
    Team     = "operation"
  })
}

variable "tags" {
  default = {
    Name = "nginx"
    env  = "dev"
  }
}

variable "teamlead" {
  default = "chaithanya"
}

