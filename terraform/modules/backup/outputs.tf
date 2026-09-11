output "backup_plan_name" {
  value = aws_backup_plan.main.name
}

output "backup_vault_name" {
  value = aws_backup_vault.main.name
}
