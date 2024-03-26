variable "instances" {
  default = {
    frontend = "Frontend"
    backend = "Backend"
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "nginx" {
  for_each = var.instances
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-037dcd68553894e24"]
  tags = {
    Name = lookup(var.instances,each.value,"nokey")
  }
}

resource "null_resource" "nginxf" {
  for_each = var.instances
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = lookup(aws_instance.nginx,each.value,"novalue").private_ip
    }
    inline = [
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx"
    ]
  }
}

