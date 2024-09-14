# IAC for AWS
## Prepare
    - Install CLI tools `terraform`, `aws`
    - An AWS IAM Account with policy `AdministratorAccess`
    - Create `Access key` for this IAM Account
    - Configure AWS Credential by command `aws configure` with `aws_access_key_id` and `aws_secret_access_key`
## Install
### Init general components (DynamoDB Tables, S3 Bucket, IAM Roles, IAM Policies)
    - Uncomment lines into files `01-main.tf`, `01-variables.tf` and `01-versions.tf`
    - Run `terraform init` to init the backend and provider plugins 
    - Uncomment lines into files `02-dynamodb.tf`, `02-iam.tf`, `02-s3.tf` and `02-outputs.tf` 
    - Run commands to create DynamoDB Tables and S3 Bucket to store state file
        ``` terraform init
            terraform validate
            terraform plan
            terraform apply
        ```
    - Save output information, uncomment and fill-in file `03-backend.tf`
    - Run commands to use S3 bucket as backend and DynamoDB to lock state
        ``` terraform init
            terraform validate
            terraform plan
            terraform apply
        ```
    - The file `terraform.tfstate` will automate upload from local to S3 bucket
### Create VPC
    - Create VPC with a CIDR block of 10.1.0.0/16, including 3 public subnets with /24 CIDR ranges, 3 private subnets with /23 CIDR ranges for application workloads, and 3 private subnets with /26 CIDR ranges for the database
    - Uncomment lines into files `04-vpc.tf` and `04-outputs.tf`
    - Run commands 
        ``` terraform init
            terraform validate
            terraform plan
            terraform apply
        ```
### Create EKS Cluster
    -  EKS cluster in the private subnets, which include:
        • A node group in a single availability zone (1 subnet) for running a database StatefulSet service, with appropriate label and taint
        • A managed node group spanning multiple availability zones (3 subnets)
    - Uncomment lines into files `05-eks.tf` and `05-outputs.tf`
    - Run commands 
        ``` terraform init
            terraform validate
            terraform plan
            terraform apply
        ```
    - Wait about 15-20 minutes for creating EKS Cluster

### Access EKS Cluster
    - Run command to get credential (change $REGION, $CLUSTER_NAME with your region, cluster name)
        ``` aws eks update-kubeconfig --region $REGION --name $CLUSTER_NAME
        ```

