resource "aws_vpc_peering_connection" "peering" {
  vpc_id        = var.output.first-vpc-id
  region        = "us-east-2"
  peer_vpc_id   = var.output.second-vpc-id
  #peer_region   = "us-east-1"
  auto_accept   = true
}