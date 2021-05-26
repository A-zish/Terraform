resource "aws_instance" "os"{
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "My first terraform os"
    }
}