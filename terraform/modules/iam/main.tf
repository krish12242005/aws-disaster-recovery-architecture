resource "aws_iam_role" "backup_service_role" {
  name = "cloudnexaa-backup-service-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [{
      Effect = "Allow"

      Principal = {
        Service = "backup.amazonaws.com"
      }

      Action = "sts:AssumeRole"
    }]
  })

  tags = {
    Environment = var.environment
    Project     = "aws-disaster-recovery-architecture"
  }
}

resource "aws_iam_role_policy_attachment" "backup_policy" {
  role       = aws_iam_role.backup_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
}
