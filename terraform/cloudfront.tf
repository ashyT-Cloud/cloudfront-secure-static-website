# --- Origin Access Control ---
resource "aws_cloudfront_origin_access_control" "website" {

  name = "${var.project_name}-oac"

  description = "Origin Access Conrol for s3"

  origin_access_control_origin_type = "s3"

  signing_behavior = "always"

  signing_protocol = "sigv4"

}

# --- CloudFront Disribution ---
resource "aws_cloudfront_distribution" "website" {

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "Secure Static Website"
  default_root_object = "index.html"

  price_class = "PriceClass_100"

  origin {

    domain_name = aws_s3_bucket.website.bucket_regional_domain_name
    origin_id   = "website-s3-origin"

    origin_access_control_id = aws_cloudfront_origin_access_control.website.id

  }

  default_cache_behavior {

    allowed_methods = [
      "GET",
      "HEAD"
    ]

    cached_methods = [
      "GET",
      "HEAD"
    ]

    target_origin_id = "website-s3-origin"

    viewer_protocol_policy = "redirect-to-https"

    compress = true

    cache_policy_id = "658327ea-f89d-4fab-a63d-7e88639e58f6"

  }

  restrictions {

    geo_restriction {

      restriction_type = "none"

    }

  }

  viewer_certificate {

    cloudfront_default_certificate = true

  }

}


