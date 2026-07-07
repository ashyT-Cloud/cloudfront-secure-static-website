locals {

  common_tags = {

    project = var.project_name

    Environment = var.environment

    ManagedDB = "Terraform"

    Owner = "Ashish Thakur"

  }

}
