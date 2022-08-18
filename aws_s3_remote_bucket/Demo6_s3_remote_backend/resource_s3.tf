resource "aws_s3_bucket" "bckt" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.bckt.id

  rule {
    apply_server_side_encryption_by_default {
    sse_algorithm = "AES256"
   }
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bckt.id
  
  versioning_configuration {
  status = "Enabled"
 }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.bckt.id
  acl = "private"
}

resource "aws_dynamodb_table" "locks" {
  name = "kiran-first-db-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

 attribute {
   name = "LockID"
   type = "S"
 }
}