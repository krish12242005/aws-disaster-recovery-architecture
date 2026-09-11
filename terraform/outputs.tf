output "backup_bucket_name" {
  description = "Name of the disaster recovery backup bucket"
  value       = aws_s3_bucket.backup.bucket
}

output "backup_bucket_arn" {
  description = "ARN of the disaster recovery backup bucket"
  value       = aws_s3_bucket.backup.arn
}
