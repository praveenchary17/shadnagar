provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "webserver" {
    ami = "ami-02f3f602d23f1659d"
    instance_type = "t2.micro"
    keyname = "webserver"
}