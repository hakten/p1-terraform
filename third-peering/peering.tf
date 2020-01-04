resource "aws_vpc_peering_connection" "first-to-second" {
  peer_vpc_id   = var.output.second-vpc-id
  vpc_id        = var.output.first-vpc-id
  auto_accept   = true
}