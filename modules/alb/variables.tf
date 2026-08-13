variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "public_subnet_a_id" {
  description = "Public subnet A ID"
  type        = string
}

variable "public_subnet_b_id" {
  description = "Public subnet B ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}