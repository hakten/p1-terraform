module "task1-dev" {
  source = "./environment-task1-buckets-module"
  
  region        = "us-east-1"
  bucket_name   = "wordpress-task1-dev"
  project       = "wp"
}

module "task1-qa" {
  source = "./environment-task1-buckets-module"
  
  region        = "us-east-2"
  bucket_name   = "wordpress-task1-qa"
  project       = "wp"
}

module "task1-stage" {
  source = "./environment-task1-buckets-module"
  
  region        = "us-west-1"
  bucket_name   = "wordpress-task1-stage"
  project       = "wp"
}

module "task1-prod" {
  source = "./environment-task1-buckets-module"
  
  region        = "us-west-2"
  bucket_name   = "wordpress-task1-prod"
  project       = "wp"
}