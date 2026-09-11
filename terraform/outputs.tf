output "backup_bucket_name" {
  description = "Backup S3 bucket name"
  value       = module.backup_storage.bucket_name
}

output "backup_bucket_arn" {
  description = "Backup S3 bucket ARN"
  value       = module.backup_storage.bucket_arn
}

output "backup_plan_name" {
  description = "AWS Backup plan name"
  value       = module.backup_plan.backup_plan_name
}
