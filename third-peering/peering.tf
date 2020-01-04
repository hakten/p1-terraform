provider "aws" {
  region        = "us-east-2"
}

resource "aws_vpc_peering_connection" "peering" {
  vpc_id        = module.module-first-vpc.aws_vpc.vpc.id
  peer_vpc_id   = module.module-second-vpc.aws_vpc.vpc.id
  peer_region   = "us-east-1"
  auto_accept   = true
}