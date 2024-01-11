resource "aws_instance" "WebServer" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  security_groups = [var.sg_name]
  user_data = file(var.user_data)
  tags ={
    Name="DBServer"
  }
}   


output "PrivateIP" {
  value = aws_instance.WebServer.private_ip
}


output "ec2_instance" {
  value = aws_instance.WebServer.id
}