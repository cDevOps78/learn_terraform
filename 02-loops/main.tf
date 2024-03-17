provider "aws" {
    region = "us-east-1"
  
}

resource "aws_iam_user" "iams" {
    count = 0
    //count = length(var.names)
    for_each = toset(var.names)
    name =  each.value
}

variable "names" {
    default = ["chaitu","geetha","rose","lolll"]
  
}

