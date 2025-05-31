variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  description = "List of availability zones to use"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
  default     = "medusa-repo"
}

variable "ecs_cluster_name" {
  description = "Name of ECS cluster"
  type        = string
  default     = "medusa-cluster"
}

variable "ecs_service_name" {
  description = "Name of ECS service"
  type        = string
  default     = "medusa-service"
}

variable "ecs_task_family" {
  description = "Family name of ECS task definition"
  type        = string
  default     = "medusa-task"
}

variable "container_port" {
  description = "Port exposed by the Medusa container"
  type        = number
  default     = 9000
}

variable "cpu" {
  description = "CPU units for ECS task"
  type        = string
  default     = "512"
}

variable "memory" {
  description = "Memory for ECS task"
  type        = string
  default     = "1024"
}
