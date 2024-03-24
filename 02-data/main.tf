provider "aws" {
  region = "us-east-1"
}

# Data source to security-groups
data "aws_security_groups" "test" {
  tags = {
    Name = "All_SG"
    Project = "Expense"        // It's behave likes a AND-Condition
  }
}

output "aws_security_groups" {
  value = data.aws_security_groups.test.ids
}


resource "aws_key_pair" "chaitu" {
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDI7aU6xaXo2ZfHDpVZgiM5YJe1xKQZhgfxM2coBT8fPzHB5HwTW2JmyJkgyTTcm6P7XHmcPfnYhZzqvDCZRsG4zXvdj/6Y1Ye50wFaVysVs7els+lFp88nOoL+IcTQuXvbnLADOn2Y28r0K4qvxXImVxVVewVpKESudiPLGgMOsNN34oFe/7hLgrbetVnw0SfGrS9F8d9cZAsIIOP6PZe5AKOcarKYKvrpSMVNBshUNiGOjyw15+pM7PmGz+jT5fis5T2/flB0NpMnMscswjv2to5ihISWAlUAInkHDAOQSk4sz8/LkHRYtqt4vyUBofzf34WuV+P9oCr+8pU3QLy6BNicXBxJz6k3IZ3OEhIQI4dKfbzpczh94tORFOx90Lpgi24XtCr5NogKq43M6kZr8pkWPiKSCD/P/JeFOzax8APqe6nY7FU7hEMcFlG1FmFFH9QB4rVUeg1rskzhel0NQ4mbncYknOy220WxyS36BE+Sn6lrLkrpOYyAlHMAwms= ec2-user@ip-172-31-9-213.ec2.internal"
  key_name = "chaitu"
}

data "aws_key_pair" "example" {
  key_name           = "chaitu"
}

output "aws_key_pair" {
  value = data.aws_key_pair.example.key_name
}

output "redhat_privateIp" {
  value = aws_instance.redhat.private_ip
}
resource "aws_instance" "redhat" {
  ami  = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.micro"
  // vpc_security_group_ids = ["data.aws_security_groups.test.ids"]
  key_name = data.aws_key_pair.example.key_name
}


