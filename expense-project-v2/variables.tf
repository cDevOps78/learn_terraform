#variable "ami" {
#  default = "ami-05f020f5935e52dc4"
#}
#
#variable "instances_map" {
#  default = {
#    frontend = {
#      instance_type = "t2.micro"
#      tags = {
#        Name = "frontend"
#        project = "expense-project"
#        monitor = "yes"
#      }
#    }
#    backend = {
#      instance_type = "t2.micro"
#      tags = {
#        Name = "backend"
#        project = "expense-project"
#        monitor = "yes"
#      }
#    }
#    mysql = {
#      instance_type = "t3.small"
#      tags = {
#        Name = "mysql"
#        project = "expense-project"
#        monitor = "yes"
#      }
#    }
#  }
#}