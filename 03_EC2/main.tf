provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./ec2"
#   How to create multiple ec2 instances
  for_each = toset(["dev","test","prod"])
}