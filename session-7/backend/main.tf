resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier = "${var.env}-db-instance"
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "admin"
  password             = random_password.db_password.result
  skip_final_snapshot  = var.env == "dev" ? true : false                                   #it expects true or false
  final_snapshot_identifier = var.env == "prod" ? "${var.env}-db-instance" : null          #it is required if the skip_final_snapshot is false
}
#RDS= Instance (Instance Identifier, Name for RDS Instance)
#Database = Actual Relational Database in RDS (database name)