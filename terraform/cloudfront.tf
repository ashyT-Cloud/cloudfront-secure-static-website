# --- Origin Access Control ---
resource "aws_cloudfront_origin_access_control" "website" {

  name = "${var.project_name}-oac"

  description = "Origin Access Conrol for s3"

  origin_access_control_origin_type = "s3"

  signing_behavior = "always"

  signing_protocol = "sigv4"

}
