terraform {
  cloud {
    organization = "finches"
    workspaces {
      name = "learn-terraform-aws"
    }
  }

  # backend "s3" {
  #  bucket = "mybucket"
  #  key    = "path/to/my/key"
  #  region = "us-east-1"
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "mcoleman"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a1179631ec8933d7"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
