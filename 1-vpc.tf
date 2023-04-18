
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  # Must be enabled for EFS with EKS Fargate or the CSI driver will fail to resolve the EFS endpoint. 
  # AWS Fargate does not support EBS volumes, so EFS is the option for stateful workloads
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}