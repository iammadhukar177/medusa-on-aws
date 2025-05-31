output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.medusa_repo.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.medusa_cluster.name
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.medusa_service.name
}

output "task_definition_arn" {
  description = "ARN of the ECS task definition"
  value       = aws_ecs_task_definition.medusa_task.arn
}

output "ecs_service_public_ip" {
  description = "Public IP of the Medusa service (if assigned)"
  value       = aws_ecs_service.medusa_service.network_configuration[0].assign_public_ip
}
