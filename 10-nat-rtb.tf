resource "aws_route_table" "nat-rtb" {
  vpc_id = aws_vpc.vpc-ohio.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-ohio.id
  }
}