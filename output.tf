output "first-vpc-id" {
  value = module.module-first-vpc.vpc-id
}
output "first-vpc-cidr-block" {
  value = module.module-first-vpc.vpc-cidr-block
}
output "second-vpc-id" {
  value = module.module-second-vpc.vpc-id
}
output "second-vpc-cidr-block" {
  value = module.module-second-vpc.vpc-cidr-block
}