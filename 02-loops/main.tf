
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
    // for_each = var.fruits1 
    provisioner "local-exec" {
    command = "echo ${lookup(each.key,"name","novalue")}"
    } 
}

output "f1" {
    value = var.fruits1.name1.name
  
}


output "f2" {
    value = lookup(var.fruits1.name1,"name","novalue")
  
}
