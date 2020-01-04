resource "aws_vpc_peering_connection" "peering" {
  peer_vpc_id   = var.output.second-vpc-id
  vpc_id        = var.output.first-vpc-id
  auto_accept   = true
}