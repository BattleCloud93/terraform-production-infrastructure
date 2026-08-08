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

variable "public_subnet_a_cidr" {
  description = "CIDR block for Public Subnet A."

  type = string

  default = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR block for Public Subnet B."

  type = string

  default = "10.0.2.0/24"
}

variable "private_subnet_a_cidr" {
  description = "CIDR block for Private Subnet A."

  type = string

  default = "10.0.11.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR block for Private Subnet B."

  type = string

  default = "10.0.12.0/24"
}

variable "instance_type" {
  description = "EC2 instance type for application servers."

  type = string

  default = "t3.micro"
}