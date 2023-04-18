terraform {
  required_version = "~> 1.4.1"
  backend "s3" {
    bucket = "eks-dev-sandbox-bucket"
    key    = "statefile"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

variable "cluster_name" {
  default = "demo"
}

variable "cluster_version" {
  default = "1.22"
}


# provider "aws" {
#   region = "us-east-1"
# }
