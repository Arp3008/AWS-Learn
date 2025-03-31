terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~>4.16"
        }
    }
    required_version = ">=1.2.0"
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "test_server" {
    ami = "ami-0907008e2c2a9e429"
    instance_type = "t2.micro"
    tags = {
        Name = "LearnServer"
    }
}