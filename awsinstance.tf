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
    region = "us-west-2"
}

resource "aws_instance" "test_server" {
    ami = "ami-830c94e3"
    instance_type = "t2.micro"
    tags = {
        Name = "LearnServer"
    }
}

resource "aws_instance" "test_server2" {
    ami = "ami-830c94e3"
    instance_type = "t2.micro"
    tags = {
        Name = "LearnServer2"
    }
}

resource "aws_instance" "test_server3" {
    ami = "ami-830c94e3"
    instance_type = "t2.micro"
    tags = {
        Name = var.instance_name
    }
}