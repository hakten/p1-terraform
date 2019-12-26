output "vpcid" {
  value = aws_vpc.vpc.id
}
output "cidrblock" {
  value = aws_vpc.vpc.cidr_block
}
