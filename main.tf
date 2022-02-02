resource "aws_db_instance" "sql_demo" {
    identifier = "mysqldatabase"
  storage_type = "gp2"
  allocated_storage    = 10

  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  
  port = "3306"
  name                 = "mydb"
  username             = var.username
  password             = var.pass

#   db_subnet_group_name = "vpc-00f8984b2df206c70"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "us-east-1a"
  publicly_accessible = true
  deletion_protection = true
  skip_final_snapshot  = true

  tags = {
      Name = "mysql-demo"
  }
}