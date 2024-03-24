provider "aws" {
  region = "us-east-1"
}

# Data source to security-groups

data "aws_security_groups" "test" {
  tags = {
    Name = "All_SG"
    Project = "Expense"
  }
}

output "aws_security_groups" {
  value = data.aws_security_groups.test.ids
}