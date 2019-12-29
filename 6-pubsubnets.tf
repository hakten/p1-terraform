resource "aws_subnet" "pub-1" {
  vpc_id                  = aws_vpc.vpc-ohio.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
}
resource "aws_subnet" "pub-2" {
  vpc_id                  = aws_vpc.vpc-ohio.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
}
resource "aws_subnet" "pub-3" {
  vpc_id                  = aws_vpc.vpc-ohio.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
}