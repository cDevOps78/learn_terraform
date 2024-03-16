output "name" {
  value = "I am learning terrroform"
}

output "my_name" {
  value = var.names["map_index"]
}

output "list_name" {
    value = var.list_name[var.index]
  
}
