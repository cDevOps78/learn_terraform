
# variable "fruits" {
#     default = {
#         apple: 10,
#         orange: 500
#         banana: 20

#     }  
# }

# variable "fruits1" {
#     default = {
#         name1 = {
#         name: "apple"
#         price: 20
#         }
#        name2 = {
#         name: "banababab"
#         price: 60000
#        } 
#        name3 = {
#         name: "banababab"
#         price: 60000
#        }

#     }  
# }

# resource "null_resource" "test" {
#      for_each = var.fruits1 
#     provisioner "local-exec" {
#     command = "echo ${each.value.name} ${each.value.price}"
#     } 
# }

# output "f1" {
#     value = var.fruits1.name1
  
# }


# output "f2" {
#     value = var.fruits1.name2
  
# }


variable "fruits" {
    default = {
        fruits1 = {
            banana: 20
            apple: 7000
        }
        fruits2 = {
            banana: 2000
            apple: 6060606
        }
    }
  
}

# resource "null_resource" "fruits" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${var.fruits.fruits1}-${var.fruits.fruits2}"
#     } 
# }

# resource "null_resource" "fruit1" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${var.fruits.fruits1["banana"]}-${var.fruits.fruits2["banana"]}"
#     } 
# }


resource "null_resource" "fruit3" {
     for_each = var.fruits
    provisioner "local-exec" {
    command = "echo ${each.value["banana"]}-${each.value["apple"]}"
    } 
}
