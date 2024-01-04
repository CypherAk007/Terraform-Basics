provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
}

resource "aws_eip" "elasticIP" {
  instance = aws_instance.ec2.id
  domain = "vpc"
}

output "elasticIP" {
  value = aws_eip.elasticIP.public_ip
}

# added default subnets to defaultVpc for creating ec2 instance 
# aws ec2 create-default-subnet --availability-zone us-east-1a