resource "aws_instance" "DBServer" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  security_groups = [var.sg_name]
  tags ={
    Name="DBServer"
  }
}   

output "ec2_instance" {
  value = aws_instance.DBServer.id
}

output "PrivateIP" {
  value = aws_instance.DBServer.private_ip
}