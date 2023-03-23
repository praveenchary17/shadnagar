terraform {
    backend "s3" {
        bucket = "terraformsaregudem"
        region = "us-east-1"
        key = "do-not-delete/state/terraform.tfstate"
        dynamodb_table = "dynamodb-saregudem"
    }
}