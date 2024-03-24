output "name" {
  value = var.name
}

output "map" {
 // value = lookup(var.map,"name2","novalus") [ Or ]
  value = var.map.name2
}

output "nested_map_movie" {
  // value = var.nested_map.movies.movie1  [ Or ]
  value = var.nested_map.movies["movie2"]
}

output "nested_map_song" {
  // value = var.nested_map.songs["song3"] [ Or ]
  value = lookup(var.nested_map.songs, "song3" ,"nodefault")
}




