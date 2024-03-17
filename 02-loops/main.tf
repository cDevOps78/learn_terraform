resource "null_resource" "name" {
    count = length(var.maps)
}

variable "lists" {
    default = ["chaitru",4,5,true,6]
  
}

variable "maps" {
    default = {
        ram = {
        name: "name1"
        names: "name2"
        name4: "namr5"
        }
    }
  
}

output "length_map" {
    value = length(var.maps)
  
}