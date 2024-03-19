# resource "aws_instance" "name" {
#     instance_type = "t2.micro"
#     ami = "ami-05f020f5935e52dc4"
#     tags = 
# }

output "tags" {
  value = lookup(var.tags, "forntend", "Novalue")
}