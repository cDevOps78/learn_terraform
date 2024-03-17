
variable "fruits" {
    default = {
        apple: 10,
        orange: 500
        banana: 20

    }  
}

variable "fruits1" {
    default = {
        name1 = {
        name: "apple"
        price: 20
        }
       name2 = {
        name: "banababab"
        price: 60000
       } 
       name3 = {
        name: "banababab"
        price: 60000
       }

    }  
}

resource "null_resource" "test" {
    for_each = var.fruits1 
    provisioner "local-exec" {
    command = "echo ${lookup(each.value,"name","novalue")}---${lookup(each.value,"price","novalue")} "
    } 
}

# output "f1" {
#     value = lookup(var.fruits1.name1,"banana","jobs")
  
# }


# output "f2" {
#     value = var.fruits1.name2.*
  
# }
