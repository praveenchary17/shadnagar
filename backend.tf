terraform {
    backend "s3" {
        bucket = ""
        region = ""
        key = "do-not-delete/terraform/terraform.tfstate"
        dynamodb_table = "dynamodb-terraform"
    }
}