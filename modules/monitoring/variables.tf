variable "project_name" {
  description = "Project name used for monitoring resources"
  type        = string
}

variable "autoscaling_group_name" {
  description = "Name of the Auto Scaling Group to monitor"
  type        = string
}