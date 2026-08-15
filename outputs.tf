output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.alb.alb_dns_name
}

output "autoscaling_group_name" {
  description = "Name of the application Auto Scaling Group"
  value       = module.compute.autoscaling_group_name
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = [module.networking.public_subnet_a_id, module.networking.public_subnet_b_id]
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = [module.networking.private_subnet_a_id, module.networking.private_subnet_b_id]
}

output "high_cpu_alarm_arn" {
  description = "ARN of the high CPU utilization CloudWatch alarm"
  value       = module.monitoring.high_cpu_alarm_arn
}


output "scale_up_policy_arn" {
  description = "ARN of the scale-up Auto Scaling policy"
  value       = module.monitoring.scale_up_policy_arn
}

output "scale_down_policy_arn" {
  description = "ARN of the scale-down Auto Scaling policy"
  value       = module.monitoring.scale_down_policy_arn
}

output "low_cpu_alarm_arn" {
  description = "ARN of the low CPU CloudWatch alarm"
  value       = module.monitoring.low_cpu_alarm_arn
}
