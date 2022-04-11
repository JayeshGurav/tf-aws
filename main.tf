provider "aws" {
    access_key = "AKIA5KINPBFKKGDKJCHV"
    secret_key = "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"
    region = "us-east-1"
  
}
resource "aws_instance" "JayeshEC2" {
    ami = "ami-0323c3dd2da7fb37d"
    instance_type = "t2.micro"
    count = "2"
  
}
resource "aws_s3_bucket" "JayeshS3" {
    bucket = "tf-ucket"

    tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  
}
