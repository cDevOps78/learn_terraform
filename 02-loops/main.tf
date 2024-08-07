
# variable "fruits" {
#     default = {
#         apple : 10,
#         orange : 500
#         banana : 20
#
#     }
# }
# output "name" {
#   value = "This is fruit name ${var.fruits.apple}"
# }
#
#
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
#
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

# ------------------IMP-----------------------------

# resource "null_resource" "fruit1" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${var.fruits.fruits1["banana"]}-${var.fruits.fruits2["banana"]}"
#     } 
# }


# resource "null_resource" "fruit3" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${each.value["banana"]}-${each.value["apple"]}"
#     } 
# }

# resource "null_resource" "test" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${each.value.banana} ${each.value.apple}"
#     } 
# }

# resource "null_resource" "test2" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${lookup(lookup(var.fruits,each.key,"novalue"),"banana","nofruits")}"
#     } 
# }

# resource "null_resource" "test3" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${var.fruits[each.key].banana}"
#     } 
# }

# resource "null_resource" "test5" {
#     for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${var.fruits[each.key]["banana"]}"
#     } 
# }


# resource "null_resource" "test3" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${lookup(each.value,"banana","novalue")}  ---- ${lookup(each.value,"apple","novalue")}"
#     } 
# }

# resource "null_resource" "fruit9" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${var.fruits.fruits1.banana}-${var.fruits.fruits2.apple}"
#     } 
# }


#----------------2 -are IMP----------------------

# resource "null_resource" "fruit12" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${each.value.banana}---${each.value.apple}"
#      command = "echo ${lookup(each.value,"banana","novalue")}
#     } 
# }

# resource "null_resource" "fruit0" {
#      for_each = var.fruits
#     provisioner "local-exec" {
#     command = "echo ${each.value["banana"]}---${each.value["apple"]}"
#     } 
# }

#-----------------2 -are IMP------------------------------


#-------IMP--------------------------------


variable "fruits1" {
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
variable "mname" {
    default = "name"
}