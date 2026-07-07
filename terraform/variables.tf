variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "bucket_name" {
  description = "Private S3 Bucket Name"
  type        = string
}

variable "force_destroy" {
  description = "Allow bucket deletion with object"
  type        = bool
}
