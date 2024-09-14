locals {
  name            = replace(basename(path.cwd), "_", "-")
  region          = var.region
  cluster_version = "1.30"
  account_id      = data.aws_caller_identity.current.account_id

  tags = merge(var.tags, {
    Env = local.name
    Project = var.project
  })
}

variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "project" {
  description = "The project name to use for unique resource naming"
  default     = "elsa-terraform"
  type        = string
}

variable "principal_arns" {
  description = "A list of principal arns allowed to assume the IAM role"
  default     = null
  type        = list(string)
}

variable "env" {
  type        = string
  default     = "dev"
}

variable "account_id" {
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}