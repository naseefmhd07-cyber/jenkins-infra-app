output "ec2_public_ip" {
  description = "Public IP of provisioned instance"
  value       = aws_instance.app_server.public_ip
}
