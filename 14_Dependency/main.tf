provider "aws" {
  region = "us-east-1"
}   

resource "aws_instance" "db" {
    ami ="ami-0005e0cfe09cc9050"
    instance_type = "t2.micro"
    depends_on = [ aws_instance.web ]
  
}
resource "aws_instance" "web" {
    ami ="ami-0005e0cfe09cc9050"
    instance_type = "t2.micro"
    # depends_on = [ aws_instance.db ]
}