output "name" {
  value = var.name
}

output "map" {
 value = lookup(var.map,"name2","novalus")
}




