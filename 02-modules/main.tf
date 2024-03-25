provider "aws" {
  region = "us-east-1"
}

module "name1" {
  source = "./module1"
  Name = "frontend"
  instancetype = "t3.small"
}

module "name2" {
  source = "./module1"
  Name = "mysql"
  instancetype = "t2.micro"
}