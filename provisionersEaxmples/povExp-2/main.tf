provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "nginx" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-037dcd68553894e24"]
}

resource "null_resource" "nginxf" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.nginx.private_ip
    }
    inline = [
            "sudo dnf install nginx -y",
            "sudo rm -rf /usr/share/nginx/html/* ",
            "echo 'hello-chaitu' > /usr/share/nginx/html/index.html",
            "sudo systemctl start nginx"
    ]
  }
}