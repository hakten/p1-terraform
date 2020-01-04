resource "aws_instance" "web" {
  instance_type   = var.instance_type
  ami             = var.ami-centos-7[var.region]
  subnet_id       = aws_subnet.pub-2.id
  key_name        = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.web.id,aws_security_group.ssh.id]

  user_data = file("./first-vpc/userdata-wb")
  
  tags = {
    Name = "Web"
  }

}