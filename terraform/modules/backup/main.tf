resource "aws_backup_vault" "main" {
  name = "${var.backup_plan_name}-vault"

  tags = {
    Environment = var.environment
    Project     = "aws-disaster-recovery-architecture"
  }
}

resource "aws_backup_plan" "main" {
  name = var.backup_plan_name

  rule {
    rule_name         = "daily-backup"
    target_vault_name = aws_backup_vault.main.name

    schedule = "cron(0 18 * * ? *)"

    lifecycle {
      delete_after = 30
    }
  }

  tags = {
    Environment = var.environment
    Project     = "aws-disaster-recovery-architecture"
  }
}
