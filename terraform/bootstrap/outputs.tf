output "state_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "lock_table_name" {
  value = aws_dynamodb_table.state_lock_table.name
}

output "github_actions_role_arn" {
  value = aws_iam_role.github_role.arn
}