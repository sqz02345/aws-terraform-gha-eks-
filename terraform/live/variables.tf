variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy resources into"
}

variable "project_name" {
  type        = string
  description = "Project name, used for tagging and naming resources"
  default     = "aws-ec2-gha"
}
variable "vpc_cidr" {
  type        = string
  description = "Primary VPC for production workloads"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for VPC"
  default     = ["us-east-1a", "us-east-1b"]
}


variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDR blocks, one per availability zone"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDR blocks, one per availability zone"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
  default     = "aws-ec2-gha-eks"
}

variable "kubernetes_version" {
  type        = string
  description = " Version of the Kubernetes Cluster"
  default     = "1.31"
}

variable "node_instance_types" {
  type        = list(string)
  description = "EC2 instance types for EKS worker nodes"
  default     = ["t3.medium", "t3.large"]
}