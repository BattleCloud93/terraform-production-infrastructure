output "high_cpu_alarm_arn" {
  description = "ARN of the high CPU CloudWatch alarm"
  value       = aws_cloudwatch_metric_alarm.high_cpu.arn
}

output "scale_up_policy_arn" {
  description = "ARN of the scale-up Auto Scaling policy"
  value       = aws_autoscaling_policy.scale_up.arn
}

output "scale_down_policy_arn" {
  description = "ARN of the scale-down Auto Scaling policy"
  value       = aws_autoscaling_policy.scale_down.arn
}