output "repository_url" {
  description = "The URL of the GG Service repository"
  value       = aws_ecr_repository.ggservice.repository_url
}

output "repository_arn" {
  description = "The ARN of the GG Service repository"
  value       = aws_ecr_repository.ggservice.arn
}