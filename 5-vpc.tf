resource "aws_vpc" "vpc" {
  cidr_block       = var.cidrblock

  tags = {
    Name = var.mymap[key02]
  }
}