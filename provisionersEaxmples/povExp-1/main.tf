# Without decouple of Provisioner

provider "aws" {
    region      = "us-east-1"  
}

 resource "aws_instance" "nginx" {
    ami           = data.aws_ami.ami_id.id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-037dcd68553894e24"]
    tags          = lookup(var.tags,"nginx","notags")

    provisioner "remote-exec" {

         connection {
         type     = "ssh"
         user     = "ec2-user"
         password = "DevOps321"
         host     = self.public_ip
        }

        inline = [ 
            "sudo dnf install nginx -y",
            "sudo rm -rf /usr/share/nginx/html/*",
            "echo 'Hello-chaitu'  > /usr/share/nginx/html/index.html",
            "sudo systemctl start nginx"
         ]
    }
 }

 # with decouple of Provisioner 