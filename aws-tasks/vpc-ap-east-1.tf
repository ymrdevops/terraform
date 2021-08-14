resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    provider = aws.aws-ap-east-1
    tags = {
      "Name" = "myvpctest"
    } 
}