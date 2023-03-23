resource "aws_instance" "webserver" {
    ami = "ami-0557a15b87f6559cf"
    instance_type = "t2.micro"
    keyname = "webserver"
    tags = { 
        Name = "mywebserver"
    }
}
