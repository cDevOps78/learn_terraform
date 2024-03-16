output "name" {
  value = var.names.upsana.ram["chaitu"]
}

output "childlenrth" {
    value = length(var.names.upsana["child"])
}
# output "length_map" {
#     value = length(var.names)
  
# }

# output "my_name" {
#   value = lookup(var.names, "ram", "helellelle")
# }

# output "list_name" {
#     value = var.list_name[var.index]
  
# }

# output "names" { 
#     value = length(var.list_name[1])
# }