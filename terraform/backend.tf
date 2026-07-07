terraform {
  backend "s3" {
    bucket         = "ashyt-tf-state"
    key            = "cloudfront-secure-static-website/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ashyt-tf-lock"
    encrypt        = true
  }
}
