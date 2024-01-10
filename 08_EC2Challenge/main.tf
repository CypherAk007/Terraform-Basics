provider "aws" {
  region = "us-east-1"
}   

resource "aws_instance" "DBServer" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.webtraffic.name]
  tags ={
    Name="DBServer"
  }
}

resource "aws_instance" "WebServer" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.webtraffic.name]
  
  user_data = file("server-script.sh")

  tags ={
    Name="WebServer"
  }

  
}

resource "aws_eip" "elasticIP" {
  instance = aws_instance.WebServer.id
  domain = "vpc"
  
}

resource "aws_security_group" "webtraffic" {
  name = "allowtraffic"
  dynamic "ingress" {
    iterator = port 
    for_each = var.ingressports
    content {
        from_port = port.value 
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    iterator = port 
    for_each = var.egressports
    content {
        from_port = port.value 
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
}