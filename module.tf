module "module-first-vpc" {
  source = "./first-vpc"
}
module "module-second-vpc" {
  source = "./second-vpc"
}
module "module-third-peering" {
  source = "./third-peering"
}