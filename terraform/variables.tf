variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "production"
}

variable "backup_bucket_name" {
  description = "S3 bucket name for backup storage"
  type        = string
  default     = "cloudnexaa-disaster-recovery-backups"
}
