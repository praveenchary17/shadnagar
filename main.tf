resource "aws_s3_bucket" "terraform_state" {
  #S3 bucket name should be unique in a region
  bucket = "terraformsaregudem"
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

resource "aws_instance" "webserver" {
    ami = "ami-0557a15b87f6559cf"
    instance_type = "t2.micro"
    keyname = "webserver"
    tags = { 
        Name = "mywebserver"
    }
}

