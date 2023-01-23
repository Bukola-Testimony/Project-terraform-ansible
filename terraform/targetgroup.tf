# create a target group
resource "aws_lb_target_group" "alb_target_group" {
  name     = "lms-alb-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

}

# Attach target group to application load balancer

#Attach instance1
resource "aws_lb_target_group_attachment" "app_server1" {
  target_group_arn = aws_lb_target_group.alb_target_group.arn
  target_id        = aws_instance.app_server1.id
  port             = 80
}


#Attach instance2
resource "aws_lb_target_group_attachment" "app_server2" {
  target_group_arn = aws_lb_target_group.alb_target_group.arn
  target_id        = aws_instance.app_server2.id
  port             = 80
}
