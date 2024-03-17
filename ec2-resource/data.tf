data "aws_instances" "test" {
  instance_tags = {
    Name: "frontend"
  }
}  