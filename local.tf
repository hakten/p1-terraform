resource "null_resource" "login" {
    depends_on = ["module.my-cluster"]
    provisioner "local-exec" {
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
    }
}

## aws cli should be installed
## kubectl should be installed
## if they are not installed please comment out below local-exec null resuorces, it will install them

#  resource "null_resource" "install" {
#  when       = "create"
#  depends_on = ["module.my-cluster"]
#     provisioner "local-exec" {
#     command = "sudo yum install epel-release -y && sudo yum install python-pip -y && sudo pip install awscli && curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator"
#   }
# }

#  resource "null_resource" "chmod" {
#  when       = "create"
#  depends_on = ["null_resource.install"]
#     provisioner "local-exec" {
#     command = "sudo chmod +x aws-iam-authenticator"
#   } 
# } 
    
#  resource "null_resource" "move" {
#  when       = "create"
#  depends_on = ["null_resource.chmod"]
#     provisioner "local-exec" {
#     command = "sudo mv aws-iam-authenticator /bin"
#   } 
# } 

#  resource "null_resource" "login" {
#  when       = "create"
#  depends_on = ["null_resource.move"]
#     provisioner "local-exec" {
#     command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
#   }
# }

#  resource "null_resource" "get_kubectl" {
#  when       = "create"
#  depends_on = ["null_resource.login"]
#     provisioner "local-exec" {
#     command = "curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl"
#   }
# }

#  resource "null_resource" "chmod_kubectl" {
#  when       = "create"
#  depends_on = ["null_resource.get_kubectl"]
#     provisioner "local-exec" {
#     command = "sudo chmod +x kubectl"
#   }
# }

#  resource "null_resource" "move_kubectl" {
#  when       = "create"
#  depends_on = ["null_resource.chmod_kubectl"]
#     provisioner "local-exec" {
#     command = "mv kubectl /bin"
#   }
# }