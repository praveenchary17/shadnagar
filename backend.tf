terraform {
        backend "s3" {
        bucket = "terraformsaregudem"
        key="do-not-delete/state/terraform.tfstate"
        region="us-east-1"
        dynamodb_table="saregudem-lock"
        }
}
