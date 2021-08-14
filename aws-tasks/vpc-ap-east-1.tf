resource "aws_vpc" "myvpceast" {
    cidr_block = "10.0.0.0/16"
    provider = aws.aws-ap-east-1
    tags = {
      "Name" = "myvpctesteast"
    } 
}