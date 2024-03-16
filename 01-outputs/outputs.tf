# output "name" {
#   value = "I am learning terrroform"
# }

# output "my_name" {
#   value = lookup(var.names, "ram", "helellelle")
# }

# output "list_name" {
#     value = var.list_name[var.index]
  
# }

output "names" { 
    value = var.list_name[count.index]
}