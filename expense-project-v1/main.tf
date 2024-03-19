provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "frontend" {
    instance_type = "t2.micro"
    ami = "ami-05f020f5935e52dc4"
    tags = lookup(var.tags, "frontend","novalue")
}

# -----------------------IMP-----------------------------------------
# output "tags" {
#   value = var.tags.frontend.Name
# }

# output "tags" {
#   value = var.tags.mysql["monitor"]
# }

# output "tags" {
#   value = lookup(lookup(var.tags, "frontend", "Novalue"),"monitor","nomonitor")
# }
#-----------------------------------------------------------------------



