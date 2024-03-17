provider "aws" {
    region = "us-east-1"
  
}

resource "aws_iam_user" "iams" {
    count = length(var.names)
    name =  var.names[count.index]
}

variable "names" {
    default = ["chaitu","geetha","rose","lolll"]
  
}