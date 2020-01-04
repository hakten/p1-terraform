output "first-vpc-id" {
  value = "module.module-first-vpc.aws_vpc.vpc.id"
}
# output "first-vpc-cidr-block" {
#   value = module.module-first-vpc.aws_vpc.vpc.cidr_block
# }
# output "second-vpc-id" {
#   value = module.module-second-vpc.aws_vpc.vpc.id
# }
# output "second-vpc-cidr-block" {
#   value = aws_vpc.vpc.cidr_block
# }