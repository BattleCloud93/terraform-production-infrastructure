locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

#ALB
resource "aws_lb" "app" {
  name               = "tf-prod-infra-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [var.security_group_id]

  subnets = [var.public_subnet_a_id, var.public_subnet_b_id]

  tags = merge(local.common_tags, {
    Name = "${var.project_name}-alb"
  })
}

#Target Group
resource "aws_lb_target_group" "app" {
  name     = "tf-prod-infra-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    enabled             = true
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    protocol            = "HTTP"
    matcher             = "200"
  }

  tags = merge(local.common_tags, {
    Name = "${var.project_name}-target-group"
  })
}

#Listener
resource "aws_lb_listener" "app" {
  load_balancer_arn = aws_lb.app.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app.arn
  }
}