output "s3_bucket_arn" {
  value       = aws_s3_bucket.mybucket2.arn
  description = "arn of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.locks.name
  description = "The name of the DynamoDB table"
  
}