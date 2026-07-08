# Design Decisions

## Why Remote Terraform Backend?

To avoid losing Terraform state if the local workstation is lost and to enable collaboration.

## Why Origin Access Control (OAC)?

OAC is the modern AWS-recommended approach for allowing CloudFront to securely access a private S3 bucket.

## Why Private S3 Bucket?

The website content should never be directly accessible from Amazon S3. All requests should flow through CloudFront.

## Why Bucket Versioning?

Protects against accidental overwrites and deletions of website content.
