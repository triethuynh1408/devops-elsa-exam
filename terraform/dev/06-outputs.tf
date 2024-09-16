# data "aws_lb" "argocd" {
#   tags = {
#     "kubernetes.io/service-name" = "argocd/argocd-argo-cd-server"
#     "kubernetes.io/cluster/${local.name}" = "owned"
#   }
# }

# output "argocd_alb_dns" {
#   value       = data.aws_lb.argocd.dns_name
# }
