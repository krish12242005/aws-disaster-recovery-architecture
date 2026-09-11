import json
import os
from datetime import datetime


def lambda_handler(event, context):
    """
    Basic disaster recovery backup status handler.
    """

    backup_status = event.get("backup_status", "UNKNOWN")

    response = {
        "project": "aws-disaster-recovery-architecture",
        "backup_status": backup_status,
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "message": "Backup status processed successfully"
    }

    print(json.dumps(response))

    return {
        "statusCode": 200,
        "body": json.dumps(response)
    }
