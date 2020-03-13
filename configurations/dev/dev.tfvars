
s3_folder_region    = "us-east-1"                   #Will be used to set backend.tf
s3_bucket           = "t-s3-dev"              #Will be used to set backend.tf
s3_folder_project   = "application"              #Will be used to set backend.tf
s3_folder_type      = "state"                     #Will be used to set backend.tf
s3_tfstate_file     = "infrastructure.tfstate"      #Will be used to set backend.tf


environment = "dev"
region      = "us-east-1"

vpc_id           = "vpc-092207b35201fa7bc"
subnet1          = "subnet-04f2d14557ff09e10"
subnet2          = "subnet-04f2d14557ff09e10"
subnet3          = "subnet-0a7aa8a753762bd3a"
cluster_name     = "cluster"
instance_type    = "t2.micro"
asg_max_size     = "3" 
asg_min_size     = "3"
asg_desired_capacity = "3"
cluster_version      = "1.14"



# jenkins will provide 
## environment = "dev"
## region = "us-west-2"
## cluster_name = "dev-cluster"
## instance_type = "t2.micro"
## asg_max_size = "48" 
## asg_min_size = "3"
## asg_desired_capacity = "3"
## cluster_version = "1.14"





