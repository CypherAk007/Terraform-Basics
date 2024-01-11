provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "myRDS" {
  db_name = "myDB"
#   unique name for our instance #go as part of FQDN #name for server
  identifier = "my-first-rds"
  instance_class = "db.t2.micro"
  engine = "mariadb"
  engine_version = "10.6.14" #Got if console
  username = "bob"
  password = "password123"
  port = 3306
  allocated_storage = 20 #fm console
  skip_final_snapshot = true #dont create snapshot when destroy snapshot
  
}