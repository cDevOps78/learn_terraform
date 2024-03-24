output "name" {
  value = var.name
}

output "map" {
 // value = lookup(var.map,"name2","novalus")
  value = var.map.name2
}

output "nested_map_movie" {
  value = var.nested_map.movies.movie1
}

output "nested_map_song" {
  value = var.nested_map.songs["song3"]
}




