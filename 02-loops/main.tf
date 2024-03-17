provider "aws" {
    region = "us-east-1"
  
}

resource "aws_iam_user" "iams" {
    //count = 0
    //count = length(var.names)

    name =  "ram"
}


resource "aws_iam_user" "iam" {
    //count = length(var.names)

    name =  "chaitu"
}


variable "names" {
    default = ["chaitu","geetha","rose","lolll"]
  
}

