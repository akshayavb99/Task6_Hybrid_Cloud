variable db_sg {}
variable alloc_store {}
variable store_type {}
variable engine {}
variable engine_ver {}
variable inst_type {}
variable db_name {}
variable db_username {}
variable db_password {}

resource "aws_db_instance" "rds_inst" {
  depends_on        = [var.db_sg]
  allocated_storage = var.alloc_store
  storage_type      = var.store_type
  engine = var.engine
  vpc_security_group_ids = [var.db_sg.id]
  engine_version         = var.engine_ver
  instance_class         = var.inst_type
  
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  
  publicly_accessible = true
  
  skip_final_snapshot = true


  tags = {
    Name = "my_rds_db"
  }
}

output "db_name" {
  value = aws_db_instance.rds_inst.name
}

output "db_addr" {
  value = aws_db_instance.rds_inst.address
}

output "db_username" {
  value = aws_db_instance.rds_inst.username
}

output "db_passwd" {
  value = aws_db_instance.rds_inst.password
}

