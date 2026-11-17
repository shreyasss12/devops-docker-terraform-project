output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web_server.public_ip
}

output "application_url" {
  description = "URL of deployed application"
  value       = "http://${aws_instance.web_server.public_ip}"
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.app.repository_url
}

output "github_actions_role_arn" {
  description = "IAM role assumed by GitHub Actions"
  value       = aws_iam_role.github_actions.arn
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web_server.id
}