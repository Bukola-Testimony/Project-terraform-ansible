
# Outputs for instance1
output "instance1_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server1.public_ip
}

# Outputs for instance2
output "instance2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server2.public_ip
}


output "instance1_public_dns" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server1.public_dns
}


output "instance2_public_dns" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server2.public_dns
}


# Outputs for elastic load balancer
output "alb_dns_name" {
  description = "Public IP address of the EC2 instance"
  value       = aws_lb.application_load_balancer.dns_name
}









  