resource "null_resource" "login" {
    depends_on = ["module.my-cluster"]
    provisioner "local-exec" {
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
    }
}

## aws cli should be installed
## kubectl should be installed
## if they are not installed please comment out below local-exec null resuorces, it will install them

 resource "null_resource" "install" {
 depends_on = ["module.my-cluster"]
    provisioner "local-exec" {
    when       = "create"
    command = "sudo yum install epel-release -y && sudo yum install python-pip -y && sudo pip install awscli && curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator"
  }
}

 resource "null_resource" "chmod" {
 depends_on = ["null_resource.install"]
    provisioner "local-exec" {
    when       = "create"
    command = "sudo chmod +x aws-iam-authenticator"
  } 
} 
    
 resource "null_resource" "move" {
 depends_on = ["null_resource.chmod"]
    provisioner "local-exec" {
    when       = "create"
    command = "sudo mv aws-iam-authenticator /bin"
  } 
} 

 resource "null_resource" "login" {
 depends_on = ["null_resource.move"]
    provisioner "local-exec" {
    when       = "create"
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
  }
}

 resource "null_resource" "get_kubectl" {
 depends_on = ["null_resource.login"]
    provisioner "local-exec" {
    when       = "create"
    command = "curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl"
  }
}

 resource "null_resource" "chmod_kubectl" {
 depends_on = ["null_resource.get_kubectl"]
    provisioner "local-exec" {
    when       = "create"
    command = "sudo chmod +x kubectl"
  }
}

 resource "null_resource" "move_kubectl" {
 depends_on = ["null_resource.chmod_kubectl"]
    provisioner "local-exec" {
    when       = "create"
    command = "mv kubectl /bin"
  }
}