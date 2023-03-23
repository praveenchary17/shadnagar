resource "aws_instance" "webserver" {
    ami = "ami-0557a15b87f6559cf"
    instance_type = "t2.micro"
    keyname = "webserver"
    tags = { 
        Name = "mywebserver"
    }
}

resource "aws_s3_bucket" "terraform_state" {
    #S3 bucket name should be unique in a region
    bucket = "terraformchary"
    #Prevent accidental deletion
    lifecycle {
        prevent_destroy = false
    }
    #enable versioning
    versioning {
        enabled = true
    }
    #enabling server side encryption
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                see_algorithm = "AES256"
            }
        }
    }
}