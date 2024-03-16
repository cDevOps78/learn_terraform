output "name" {
  value = "I am learning terrroform"
}

output "my_name" {
  value = lookup(var.names, var.map_index, "nonnull")
}

output "list_name" {
    value = var.list_name[var.index]
  
}
