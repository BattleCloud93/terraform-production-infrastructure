terraform {
  backend "s3" {
    bucket       = "corey-terraform-prod-state-2026"
    key          = "production/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    dynamodb_table = "terraform-state-locks"
  }
}