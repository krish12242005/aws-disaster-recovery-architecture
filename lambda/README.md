# Lambda Backup Status Handler

This Lambda function processes backup status information
and returns a structured response.

## Input Example

{
  "backup_status": "COMPLETED"
}

## Output

The function returns the backup status, project name,
timestamp, and processing message.
