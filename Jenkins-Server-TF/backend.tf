terraform {
  backend "s3" {
    bucket         = "test-project-backet1"
    region         = "us-east-1"
    key            = "End-to-End DevSecOps Kubernetes Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "My-DynamoDB-Table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}