terraform {
    backend "s3" {
        bucket = "terraformchary"
        region = "us-east-1"
        key = "do-not-delete/terraform/terraform.tfstate"
        dynamodb_table = "dynamodb-terraform-lock"
    }
}