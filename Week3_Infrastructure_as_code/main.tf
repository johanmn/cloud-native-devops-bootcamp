terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.7"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "webserver" {
    source = "./modules/ec2"

    servername = "terraformdemo"
    size = "t3.micro"
    
}