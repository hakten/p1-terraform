resource "null_resource" "login" {
    provisioner "local-exec" {
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
    }
}

## aws cli should be installed
## kubectl should be installed
