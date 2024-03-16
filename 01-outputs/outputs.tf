output "name" {
  value = "I am learning terrroform"
}

output "my_name" {
  value = lookup(var.names, "chaitu12", "ram")
}

variable "names" {
    default = {
      chaitu: "chaithanya",
      geetha: "geetha_subbarsjss"
    }
  
}
#