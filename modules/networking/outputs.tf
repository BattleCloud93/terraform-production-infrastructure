output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "private_subnet_a_id" {
  description = "Private subnet A ID"
  value       = aws_subnet.private_a.id
}

output "private_subnet_b_id" {
  description = "Private subnet B ID"
  value       = aws_subnet.private_b.id
}