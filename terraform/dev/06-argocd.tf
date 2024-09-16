# provider "helm" {
#   kubernetes {
#     host                   = module.eks.cluster_endpoint
#     cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)

#     exec {
#       api_version = "client.authentication.k8s.io/v1beta1"
#       command     = "aws"
#       args        = ["eks", "get-token", "--cluster-name", local.name]
#     }
#   }
# }

# resource "helm_release" "argocd" {
#   repository       = "oci://registry-1.docker.io/bitnamicharts"
#   chart            = "argo-cd"
#   version          = "6.5.2"
#   name             = "argocd"
#   namespace        = "argocd"

#   values = [
#     file("./argocd-values.yaml")
#   ]

#   lifecycle {
#     ignore_changes = [
#       metadata
#     ]
#   }
# }
