provider "aws" {
  region        = "us-east-2"
}

resource "aws_vpc_peering_connection" "peering" {
  vpc_id        = output.first-vpc-id
  peer_vpc_id   = output.second-vpc-id
  peer_region   = "us-east-1"
  auto_accept   = true
}