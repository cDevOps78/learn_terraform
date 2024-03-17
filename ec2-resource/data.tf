data "aws_instances" "frontend" {
  instance_tags = {
    Name: "frontend"
  }
}  