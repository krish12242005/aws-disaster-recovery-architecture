# Terraform Infrastructure

The Terraform configuration is organized into reusable modules.

## Modules

### s3-backup

Creates:

- S3 backup bucket
- Versioning
- Server-side encryption
- Public access blocking

### iam

Creates the IAM service role required by
AWS Backup.

### backup

Creates:

- AWS Backup Vault
- AWS Backup Plan
- Daily backup rule
- 30-day retention

## Important

This project is currently prepared for local validation.

Do NOT run:

terraform apply

until AWS credentials, permissions and resource requirements
have been reviewed.
