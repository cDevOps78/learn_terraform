variable "name" {
  default = "chaithanya"
}

variable "map" {
  default = {
    name: "name2"
    name2: "name3"
  }
}

variable "nested_map" {
  default = {
    movies = {
      movie1: "RRR",
      movie2: "kGF-1",
      movie3: "KGF"
    }
    songs = {
      song1: "hello-world"
      song2: "blueEyes",
      song3: "BlueOcean"
    }
  }
}