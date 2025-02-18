provider "aws" {
  region = "us-east-1"
}

# Subnet definition
resource "aws_subnet" "my_subnet" {
  vpc_id            = "vpc-059993f11d7199eac"
  cidr_block        = "172.31.100.0/24"
  availability_zone = "us-east-1a"
}

# EC2 instance definition
resource "aws_instance" "my_ec2instance" {
  ami           = "ami-04681163a08179f28"
  instance_type = "t2.micro"
  subnet_id     = "subnet-017034cdb71d722b1"
  key_name      = "s9"
  tags = {
    Name = "MyInstance"
  }
}

# S3 bucket definition
resource "aws_s3_bucket" "my_s3bucket" {
  bucket = "my-unique-bucket-name-022004"
}

