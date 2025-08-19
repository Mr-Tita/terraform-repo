output "bucket_arns" {
  value = [for b in aws_s3_bucket.buckets : b.arn]
}

output "user_names" {
  value = keys(aws_iam_user.users)
}