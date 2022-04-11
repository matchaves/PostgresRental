resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "postgres"
  engine_version       = "12.10"
  instance_class       = "db.t2.micro"
  name                 = "dvdrental"
  username             = "postgres"
  password             = "root123123"
  skip_final_snapshot  = true
  identifier           = "dvdrental"
  publicly_accessible  = true 
}