resource "aws_vpc" "myvpceast" {
  cidr_block = "10.0.0.0/16"
  provider   = aws.apeast1
  tags = {
    "Name" = "myvpctesteast"
  }
}