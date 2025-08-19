output "bucket-arns" {
  value = aws_s3_bucket.buckets.arn
}

output "user_names" {
  value = keys(aws_iam_user.users)
}