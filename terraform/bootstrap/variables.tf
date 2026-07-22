variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy resources into"
}

variable "project_name" {
  type        = string
  description = "Project name, used for tagging and naming bootstrap resources"
  default     = "aws-ec2-gha"
}

variable "state_bucket_prefix" {
  type        = string
  description = "Human-readable prefix for the Terraform state S3 bucket name, before the random suffix is appended"
  default     = "aws-ec2-gha-state"
}
variable "github_org" {
  type        = string
  description = "Name of the pwner"
  default = "sqz02345"
}

variable "github_repo" {
  type        = string
  description = "GitHub repository name that's allowed to assume the bootstrap IAM role"
  default     = "aws-terraform-gha-eks"
}

