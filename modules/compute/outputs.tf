output "launch_template_id" {
  description = "ID of the application launch template"
  value       = aws_launch_template.app.id
}

output "launch_template_latest_version" {
  description = "Latest version of the application launch template"
  value       = aws_launch_template.app.latest_version
}

output "selected_ami_id" {
  description = "AMI ID of the selected AMI for the application servers"
  value       = data.aws_ami.amazon_linux.id
}

output "autoscaling_group_name" {
  description = "Name of the application Auto Scaling Group"
  value       = aws_autoscaling_group.app.name
}