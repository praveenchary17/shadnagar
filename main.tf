resource "aws_s3_bucket" "terraform_state" {
  #S3 bucket name should be unique in a region
  bucket = "terraform-state-demo3"
  #Prevent accidental deletion
  lifecycle {
    prevent_destroy = true
  }
  #Enable Versioning
  versioning {
    enabled = true
  }
  #Enabling server side encryption
  server_side_encryption_configuration {
    rule{
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

