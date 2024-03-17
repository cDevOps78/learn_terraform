resource "null_resource" "name" {
    count = length(var.lists)
}

variable "lists" {
    default = ["chaitru",4,5,true,6]
  
}