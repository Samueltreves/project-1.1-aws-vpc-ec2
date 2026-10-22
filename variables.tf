variable "aws_region" {
  description = "Target AWS Region for deployment"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Standard naming prefix for resources"
  type        = string
  default     = "project-1.1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "Base IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "availability_zones" {
  description = "AZs for multi-AZ high availability"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}
variable "instance_type" {
  description = "EC2 instance hardware sizing"
  type        = string
  default     = "t3.micro"
}


