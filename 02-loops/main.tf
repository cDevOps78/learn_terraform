
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
        apple: 10,
        banana: 20
        }
       name2 = {
        orange: 2000,
        jobbbsbb: 60000
       }  
    }  
}

# resource "null_resource" "test" {
#     for_each = var.fruits1 
#     provisioner "local-exec" {
#     command = "echo ${each.key} = ${each.value}"
#     } 
# }

output "f1" {
    value = lookup(var.fruits1,"name1","novalw")
  
}


output "f2" {
    value = var.fruits1.name2.*
  
}
