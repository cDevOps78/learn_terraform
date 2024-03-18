# output "name" {
#   value = "chaitu name is - ${var.names.ram.ram}"
# }

# output "childlenrth" {
#     value = length(var.names.upsana["child"])
# }
# # output "length_map" {
# #     value = length(var.names)
  
# # }

# # output "my_name" {
# #   value = lookup(var.names, "ram", "helellelle")
# # }

# # output "list_name" {
# #     value = var.list_name[var.index]
  
# # }

# # output "names" { 
# #     value = length(var.list_name[1])
# # }


# output "name" {
#   value = var.name
# }

# output "my_name" {
#   value = var.my_name
# }

provider "aws" {
  region = "us-east-1"
  
}

data "aws_instance" "foo" {
  // instance_id = "i-instanceid"
  filter {
    name   = "tag:Name"
    values = ["workstation"]
  }
}