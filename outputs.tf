output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr" {
  value = "${module.vpc.vpc_cidr}"
}

output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets" {
  value = "${module.vpc.private_subnets}"
}

output "webserver-ip" {
  value = "${aws_instance.instance.public_ip}"
}

output "rds-endpoint" {
  value = aws_db_instance.rds.address
}
output "rds-username" {
  value = aws_db_instance.rds.username
}
output "rds-db-name" {
  value = aws_db_instance.rds.name
}
output "rds-db-password" {
  value = aws_db_instance.rds.password
}