locals = {
  cluster_name                      = "prod.huseyinakten.net"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-east-1a-masters-prod-huseyinakten-net.id}", "${aws_autoscaling_group.master-us-east-1b-masters-prod-huseyinakten-net.id}", "${aws_autoscaling_group.master-us-east-1c-masters-prod-huseyinakten-net.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-prod-huseyinakten-net.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-prod-huseyinakten-net.arn}"
  masters_role_name                 = "${aws_iam_role.masters-prod-huseyinakten-net.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-prod-huseyinakten-net.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-prod-huseyinakten-net.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-east-1a-prod-huseyinakten-net.id}", "${aws_subnet.us-east-1b-prod-huseyinakten-net.id}", "${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-prod-huseyinakten-net.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-prod-huseyinakten-net.name}"
  region                            = "us-east-1"
  route_table_private-us-east-1a_id = "${aws_route_table.private-us-east-1a-prod-huseyinakten-net.id}"
  route_table_private-us-east-1b_id = "${aws_route_table.private-us-east-1b-prod-huseyinakten-net.id}"
  route_table_private-us-east-1c_id = "${aws_route_table.private-us-east-1c-prod-huseyinakten-net.id}"
  route_table_public_id             = "${aws_route_table.prod-huseyinakten-net.id}"
  subnet_us-east-1a_id              = "${aws_subnet.us-east-1a-prod-huseyinakten-net.id}"
  subnet_us-east-1b_id              = "${aws_subnet.us-east-1b-prod-huseyinakten-net.id}"
  subnet_us-east-1c_id              = "${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"
  subnet_utility-us-east-1a_id      = "${aws_subnet.utility-us-east-1a-prod-huseyinakten-net.id}"
  subnet_utility-us-east-1b_id      = "${aws_subnet.utility-us-east-1b-prod-huseyinakten-net.id}"
  subnet_utility-us-east-1c_id      = "${aws_subnet.utility-us-east-1c-prod-huseyinakten-net.id}"
  vpc_cidr_block                    = "${aws_vpc.prod-huseyinakten-net.cidr_block}"
  vpc_id                            = "${aws_vpc.prod-huseyinakten-net.id}"
}

output "cluster_name" {
  value = "prod.huseyinakten.net"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-east-1a-masters-prod-huseyinakten-net.id}", "${aws_autoscaling_group.master-us-east-1b-masters-prod-huseyinakten-net.id}", "${aws_autoscaling_group.master-us-east-1c-masters-prod-huseyinakten-net.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-prod-huseyinakten-net.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-prod-huseyinakten-net.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-prod-huseyinakten-net.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-prod-huseyinakten-net.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-prod-huseyinakten-net.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-east-1a-prod-huseyinakten-net.id}", "${aws_subnet.us-east-1b-prod-huseyinakten-net.id}", "${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-prod-huseyinakten-net.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-prod-huseyinakten-net.name}"
}

output "region" {
  value = "us-east-1"
}

output "route_table_private-us-east-1a_id" {
  value = "${aws_route_table.private-us-east-1a-prod-huseyinakten-net.id}"
}

output "route_table_private-us-east-1b_id" {
  value = "${aws_route_table.private-us-east-1b-prod-huseyinakten-net.id}"
}

output "route_table_private-us-east-1c_id" {
  value = "${aws_route_table.private-us-east-1c-prod-huseyinakten-net.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.prod-huseyinakten-net.id}"
}

output "subnet_us-east-1a_id" {
  value = "${aws_subnet.us-east-1a-prod-huseyinakten-net.id}"
}

output "subnet_us-east-1b_id" {
  value = "${aws_subnet.us-east-1b-prod-huseyinakten-net.id}"
}

output "subnet_us-east-1c_id" {
  value = "${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"
}

output "subnet_utility-us-east-1a_id" {
  value = "${aws_subnet.utility-us-east-1a-prod-huseyinakten-net.id}"
}

output "subnet_utility-us-east-1b_id" {
  value = "${aws_subnet.utility-us-east-1b-prod-huseyinakten-net.id}"
}

output "subnet_utility-us-east-1c_id" {
  value = "${aws_subnet.utility-us-east-1c-prod-huseyinakten-net.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.prod-huseyinakten-net.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.prod-huseyinakten-net.id}"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_autoscaling_attachment" "master-us-east-1a-masters-prod-huseyinakten-net" {
  elb                    = "${aws_elb.api-prod-huseyinakten-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-1a-masters-prod-huseyinakten-net.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-1b-masters-prod-huseyinakten-net" {
  elb                    = "${aws_elb.api-prod-huseyinakten-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-1b-masters-prod-huseyinakten-net.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-1c-masters-prod-huseyinakten-net" {
  elb                    = "${aws_elb.api-prod-huseyinakten-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-1c-masters-prod-huseyinakten-net.id}"
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-prod-huseyinakten-net" {
  name                 = "master-us-east-1a.masters.prod.huseyinakten.net"
  launch_configuration = "${aws_launch_configuration.master-us-east-1a-masters-prod-huseyinakten-net.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-1a-prod-huseyinakten-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-1a.masters.prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-east-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-1b-masters-prod-huseyinakten-net" {
  name                 = "master-us-east-1b.masters.prod.huseyinakten.net"
  launch_configuration = "${aws_launch_configuration.master-us-east-1b-masters-prod-huseyinakten-net.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-east-1b-prod-huseyinakten-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-1b.masters.prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-east-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-1c-masters-prod-huseyinakten-net" {
  name                 = "master-us-east-1c.masters.prod.huseyinakten.net"
  launch_configuration = "${aws_launch_configuration.master-us-east-1c-masters-prod-huseyinakten-net.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-1c.masters.prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-east-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-prod-huseyinakten-net" {
  name                 = "nodes.prod.huseyinakten.net"
  launch_configuration = "${aws_launch_configuration.nodes-prod-huseyinakten-net.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.us-east-1a-prod-huseyinakten-net.id}", "${aws_subnet.us-east-1b-prod-huseyinakten-net.id}", "${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.prod.huseyinakten.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-prod-huseyinakten-net" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "a.etcd-events.prod.huseyinakten.net"
    "k8s.io/etcd/events"                          = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-prod-huseyinakten-net" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "a.etcd-main.prod.huseyinakten.net"
    "k8s.io/etcd/main"                            = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-prod-huseyinakten-net" {
  availability_zone = "us-east-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "b.etcd-events.prod.huseyinakten.net"
    "k8s.io/etcd/events"                          = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-prod-huseyinakten-net" {
  availability_zone = "us-east-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "b.etcd-main.prod.huseyinakten.net"
    "k8s.io/etcd/main"                            = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-prod-huseyinakten-net" {
  availability_zone = "us-east-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "c.etcd-events.prod.huseyinakten.net"
    "k8s.io/etcd/events"                          = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-prod-huseyinakten-net" {
  availability_zone = "us-east-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "c.etcd-main.prod.huseyinakten.net"
    "k8s.io/etcd/main"                            = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_eip" "us-east-1a-prod-huseyinakten-net" {
  vpc = true

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1a.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_eip" "us-east-1b-prod-huseyinakten-net" {
  vpc = true

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1b.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_eip" "us-east-1c-prod-huseyinakten-net" {
  vpc = true

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1c.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_elb" "api-prod-huseyinakten-net" {
  name = "api-prod-huseyinakten-net-ifcmr0"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-prod-huseyinakten-net.id}"]
  subnets         = ["${aws_subnet.utility-us-east-1a-prod-huseyinakten-net.id}", "${aws_subnet.utility-us-east-1b-prod-huseyinakten-net.id}", "${aws_subnet.utility-us-east-1c-prod-huseyinakten-net.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "api.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-prod-huseyinakten-net" {
  name = "masters.prod.huseyinakten.net"
  role = "${aws_iam_role.masters-prod-huseyinakten-net.name}"
}

resource "aws_iam_instance_profile" "nodes-prod-huseyinakten-net" {
  name = "nodes.prod.huseyinakten.net"
  role = "${aws_iam_role.nodes-prod-huseyinakten-net.name}"
}

resource "aws_iam_role" "masters-prod-huseyinakten-net" {
  name               = "masters.prod.huseyinakten.net"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.prod.huseyinakten.net_policy")}"
}

resource "aws_iam_role" "nodes-prod-huseyinakten-net" {
  name               = "nodes.prod.huseyinakten.net"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.prod.huseyinakten.net_policy")}"
}

resource "aws_iam_role_policy" "masters-prod-huseyinakten-net" {
  name   = "masters.prod.huseyinakten.net"
  role   = "${aws_iam_role.masters-prod-huseyinakten-net.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.prod.huseyinakten.net_policy")}"
}

resource "aws_iam_role_policy" "nodes-prod-huseyinakten-net" {
  name   = "nodes.prod.huseyinakten.net"
  role   = "${aws_iam_role.nodes-prod-huseyinakten-net.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.prod.huseyinakten.net_policy")}"
}

resource "aws_internet_gateway" "prod-huseyinakten-net" {
  vpc_id = "${aws_vpc.prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-prod-huseyinakten-net-cd357b03901f9c8804ff7a9a4bef6e8b" {
  key_name   = "kubernetes.prod.huseyinakten.net-cd:35:7b:03:90:1f:9c:88:04:ff:7a:9a:4b:ef:6e:8b"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.prod.huseyinakten.net-cd357b03901f9c8804ff7a9a4bef6e8b_public_key")}"
}

resource "aws_launch_configuration" "master-us-east-1a-masters-prod-huseyinakten-net" {
  name_prefix                 = "master-us-east-1a.masters.prod.huseyinakten.net-"
  image_id                    = "ami-06e67726ce5e65ca7"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-prod-huseyinakten-net-cd357b03901f9c8804ff7a9a4bef6e8b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-prod-huseyinakten-net.id}"
  security_groups             = ["${aws_security_group.masters-prod-huseyinakten-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-1a.masters.prod.huseyinakten.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-1b-masters-prod-huseyinakten-net" {
  name_prefix                 = "master-us-east-1b.masters.prod.huseyinakten.net-"
  image_id                    = "ami-06e67726ce5e65ca7"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-prod-huseyinakten-net-cd357b03901f9c8804ff7a9a4bef6e8b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-prod-huseyinakten-net.id}"
  security_groups             = ["${aws_security_group.masters-prod-huseyinakten-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-1b.masters.prod.huseyinakten.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-1c-masters-prod-huseyinakten-net" {
  name_prefix                 = "master-us-east-1c.masters.prod.huseyinakten.net-"
  image_id                    = "ami-06e67726ce5e65ca7"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-prod-huseyinakten-net-cd357b03901f9c8804ff7a9a4bef6e8b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-prod-huseyinakten-net.id}"
  security_groups             = ["${aws_security_group.masters-prod-huseyinakten-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-1c.masters.prod.huseyinakten.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-prod-huseyinakten-net" {
  name_prefix                 = "nodes.prod.huseyinakten.net-"
  image_id                    = "ami-06e67726ce5e65ca7"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-prod-huseyinakten-net-cd357b03901f9c8804ff7a9a4bef6e8b.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-prod-huseyinakten-net.id}"
  security_groups             = ["${aws_security_group.nodes-prod-huseyinakten-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.prod.huseyinakten.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "us-east-1a-prod-huseyinakten-net" {
  allocation_id = "${aws_eip.us-east-1a-prod-huseyinakten-net.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1a-prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1a.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-prod-huseyinakten-net" {
  allocation_id = "${aws_eip.us-east-1b-prod-huseyinakten-net.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1b-prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1b.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-prod-huseyinakten-net" {
  allocation_id = "${aws_eip.us-east-1c-prod-huseyinakten-net.id}"
  subnet_id     = "${aws_subnet.utility-us-east-1c-prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1c.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.prod-huseyinakten-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.prod-huseyinakten-net.id}"
}

resource "aws_route" "private-us-east-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1a-prod-huseyinakten-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1a-prod-huseyinakten-net.id}"
}

resource "aws_route" "private-us-east-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1b-prod-huseyinakten-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1b-prod-huseyinakten-net.id}"
}

resource "aws_route" "private-us-east-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-1c-prod-huseyinakten-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-1c-prod-huseyinakten-net.id}"
}

resource "aws_route53_record" "api-prod-huseyinakten-net" {
  name = "api.prod.huseyinakten.net"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-prod-huseyinakten-net.dns_name}"
    zone_id                = "${aws_elb.api-prod-huseyinakten-net.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z1NV951DWK2T4T"
}

resource "aws_route_table" "private-us-east-1a-prod-huseyinakten-net" {
  vpc_id = "${aws_vpc.prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "private-us-east-1a.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-1a"
  }
}

resource "aws_route_table" "private-us-east-1b-prod-huseyinakten-net" {
  vpc_id = "${aws_vpc.prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "private-us-east-1b.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-1b"
  }
}

resource "aws_route_table" "private-us-east-1c-prod-huseyinakten-net" {
  vpc_id = "${aws_vpc.prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "private-us-east-1c.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-1c"
  }
}

resource "aws_route_table" "prod-huseyinakten-net" {
  vpc_id = "${aws_vpc.prod-huseyinakten-net.id}"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/kops/role"                     = "public"
  }
}

resource "aws_route_table_association" "private-us-east-1a-prod-huseyinakten-net" {
  subnet_id      = "${aws_subnet.us-east-1a-prod-huseyinakten-net.id}"
  route_table_id = "${aws_route_table.private-us-east-1a-prod-huseyinakten-net.id}"
}

resource "aws_route_table_association" "private-us-east-1b-prod-huseyinakten-net" {
  subnet_id      = "${aws_subnet.us-east-1b-prod-huseyinakten-net.id}"
  route_table_id = "${aws_route_table.private-us-east-1b-prod-huseyinakten-net.id}"
}

resource "aws_route_table_association" "private-us-east-1c-prod-huseyinakten-net" {
  subnet_id      = "${aws_subnet.us-east-1c-prod-huseyinakten-net.id}"
  route_table_id = "${aws_route_table.private-us-east-1c-prod-huseyinakten-net.id}"
}

resource "aws_route_table_association" "utility-us-east-1a-prod-huseyinakten-net" {
  subnet_id      = "${aws_subnet.utility-us-east-1a-prod-huseyinakten-net.id}"
  route_table_id = "${aws_route_table.prod-huseyinakten-net.id}"
}

resource "aws_route_table_association" "utility-us-east-1b-prod-huseyinakten-net" {
  subnet_id      = "${aws_subnet.utility-us-east-1b-prod-huseyinakten-net.id}"
  route_table_id = "${aws_route_table.prod-huseyinakten-net.id}"
}

resource "aws_route_table_association" "utility-us-east-1c-prod-huseyinakten-net" {
  subnet_id      = "${aws_subnet.utility-us-east-1c-prod-huseyinakten-net.id}"
  route_table_id = "${aws_route_table.prod-huseyinakten-net.id}"
}

resource "aws_security_group" "api-elb-prod-huseyinakten-net" {
  name        = "api-elb.prod.huseyinakten.net"
  vpc_id      = "${aws_vpc.prod-huseyinakten-net.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "api-elb.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_security_group" "masters-prod-huseyinakten-net" {
  name        = "masters.prod.huseyinakten.net"
  vpc_id      = "${aws_vpc.prod-huseyinakten-net.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "masters.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_security_group" "nodes-prod-huseyinakten-net" {
  name        = "nodes.prod.huseyinakten.net"
  vpc_id      = "${aws_vpc.prod-huseyinakten-net.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "nodes.prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-prod-huseyinakten-net.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-prod-huseyinakten-net.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.api-elb-prod-huseyinakten-net.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-prod-huseyinakten-net.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  source_security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-prod-huseyinakten-net.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-prod-huseyinakten-net.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-east-1a-prod-huseyinakten-net" {
  vpc_id            = "${aws_vpc.prod-huseyinakten-net.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-east-1a"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1a.prod.huseyinakten.net"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-east-1b-prod-huseyinakten-net" {
  vpc_id            = "${aws_vpc.prod-huseyinakten-net.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-east-1b"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1b.prod.huseyinakten.net"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-east-1c-prod-huseyinakten-net" {
  vpc_id            = "${aws_vpc.prod-huseyinakten-net.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-east-1c"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "us-east-1c.prod.huseyinakten.net"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "utility-us-east-1a-prod-huseyinakten-net" {
  vpc_id            = "${aws_vpc.prod-huseyinakten-net.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-east-1a"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "utility-us-east-1a.prod.huseyinakten.net"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-east-1b-prod-huseyinakten-net" {
  vpc_id            = "${aws_vpc.prod-huseyinakten-net.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-east-1b"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "utility-us-east-1b.prod.huseyinakten.net"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-east-1c-prod-huseyinakten-net" {
  vpc_id            = "${aws_vpc.prod-huseyinakten-net.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-east-1c"

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "utility-us-east-1c.prod.huseyinakten.net"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_vpc" "prod-huseyinakten-net" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "prod-huseyinakten-net" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                             = "prod.huseyinakten.net"
    Name                                          = "prod.huseyinakten.net"
    "kubernetes.io/cluster/prod.huseyinakten.net" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "prod-huseyinakten-net" {
  vpc_id          = "${aws_vpc.prod-huseyinakten-net.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.prod-huseyinakten-net.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
