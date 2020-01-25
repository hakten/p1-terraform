#for setenv.sh
s3_bucket_region  = "us-east-1"
s3_bucket         = "wordpress-task1-dev"
s3_folder_project = "wordpress"
s3_folder_name    = "dev"
s3_tfstate_file   = "infrastructure.tfstate"

region          = "us-east-1"

cidr            = "10.0.0.0/16"

project         = "Wordpress"
environment     = "Dev"

azs             = ["us-east-1a","us-east-1b","us-east-1c"]
public_subnets  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
private_subnets = ["10.0.11.0/24","10.0.12.0/24"]

instance_type   = "t2.micro"