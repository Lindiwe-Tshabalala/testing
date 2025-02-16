provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "testing_db" {
  allocated_storage    = var.allocated_storage
  storage_type         = "gp2"
  engine              = "sqlserver-ex"
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  identifier          = var.db_instance_identifier
  username            = var.db_username
  password            = var.db_password
  publicly_accessible = true
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.db_sg.id]
}


# Security Group to allow access (default VPC)
resource "aws_security_group" "db_sg" {
  name_prefix = "bean-db-sg"
  description = "Allow inbound access to the database"

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }
}

