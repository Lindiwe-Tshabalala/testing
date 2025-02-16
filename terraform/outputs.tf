output "db_endpoint" {
  description = "The endpoint of the RDS database instance"
  value       = aws_db_instance.testing_db.endpoint
}

output "db_instance_identifier" {
  description = "The identifier of the RDS instance"
  value       = aws_db_instance.testing_db.identifier
}
