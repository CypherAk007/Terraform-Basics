provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "ec2" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.webtraffic.name]
}

resource "aws_security_group" "webtraffic" {
  name = "allowTraffic"
  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
        
        from_port = port.value
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    iterator = port
    for_each = var.egressrules
    content {
        from_port = port.value
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
}