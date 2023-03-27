terraform {
        backend "s3" {
        bucket = "terraformsaregudem"
        key="state/terraform.tfstate"
        region="us-east-1"
        }
}
