provider "aws" {
  region = "us-east-1"
}

module "name1" {
  source = "./module1"
}

module "name2" {
  source = "./module1"
}