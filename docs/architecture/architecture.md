# Architecture

```text
                Users
                   │
                   ▼
          Amazon CloudFront
                   │
      Origin Access Control (OAC)
                   │
                   ▼
        Amazon S3 (Private Bucket)

Terraform State

Terraform
    │
    ▼
Amazon S3 Backend
    │
    ▼
DynamoDB Lock Table
```
