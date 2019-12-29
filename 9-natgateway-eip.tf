resource "aws_nat_gateway" "nat-ohio" {
  subnet_id     = aws_subnet.pub-1.id
  allocation_id = aws_eip.eip.id
}

resource "aws_eip" "eip" {
  vpc      = true
}
