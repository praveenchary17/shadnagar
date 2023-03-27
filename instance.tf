provider "aws" {
        region = "us-east-1"
}
resource "aws_instance" "backend_demo" {
    ami = "ami-0c9978668f8d55984"
    instance_type = "t2.micro"
}
