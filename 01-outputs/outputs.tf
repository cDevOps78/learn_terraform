output "name" {
  value = "I am learning terrroform"
}

output "my_name" {
  value = lookup(var.names, "chaitu", "ram")
}

output "list_name" {
    value = var.list_name
  
}
