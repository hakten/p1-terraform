#for setenv.sh
s3_bucket_region  = "us-east-2"
s3_bucket         = "wordpress-task1-qa"
s3_folder_project = "wordpress"
s3_folder_name    = "qa"
s3_tfstate_file   = "infrastructure.tfstate"

region          = "us-east-2"

cidr            = "10.0.0.0/16"

project         = "Wordpress"
environment     = "QA"

azs             = ["us-east-2a","us-east-2b","us-east-2c"]
public_subnets  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
private_subnets = ["10.0.11.0/24","10.0.12.0/24"]

instance_type   = "t2.micro"