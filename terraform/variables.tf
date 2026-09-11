variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "backup_bucket_name" {
  description = "S3 backup storage bucket"
  type        = string
  default     = "cloudnexaa-disaster-recovery-backups"
}

variable "backup_plan_name" {
  description = "AWS Backup plan name"
  type        = string
  default     = "cloudnexaa-daily-backup-plan"
}
