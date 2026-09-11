terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "backup_storage" {
  source = "./modules/s3-backup"

  bucket_name = var.backup_bucket_name
  environment = var.environment
}

module "backup_iam" {
  source = "./modules/iam"

  environment = var.environment
}

module "backup_plan" {
  source = "./modules/backup"

  backup_plan_name = var.backup_plan_name
  environment      = var.environment
}
