variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for application servers"
  type        = string
}

variable "private_subnet_a_id" {
  description = "Private subnet A ID"
  type        = string
}

variable "private_subnet_b_id" {
  description = "Private subnet B ID"
  type        = string
}
