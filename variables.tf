variable "aws_region" {
  description = "AWS region where infrastructure will be deployed"

  type = string

  default = "us-east-1"

  validation {
    condition     = contains(["us-east-1", "us-east-2", "us-west-1", "us-west-2"], var.aws_region)
    error_message = " Choose a valid US AWS region."
  }
}

variable "project_name" {
  description = "Name of the project used to tag AWS resources."

  type = string

  default = "terraform-production-infrastructure"

  validation {
    condition     = length(var.project_name) > 3
    error_message = "Project name must be at least 3 characters."
  }
}

variable "environment" {
  description = "Deployment environment."

  type = string

  default = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod."
  }
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."

  type = string

  default = "10.0.0.0/16"
}