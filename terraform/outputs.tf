output "bucket_name" {

  value = aws_s3_bucket.website.bucket

}

output "bucket_arn" {

  value = aws_s3_bucket.website.arn

}

output "cloudfron_domain_name" {
  description = "CloudFront distribution domain name"
  value       = aws_cloudfront_distribution.website.domain_name
}

output "cloudfront_distribution_id" {
  description = "Cloudfron distribution ID"
  value       = aws_cloudfront_distribution.website.id
}
