terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.6.0"
    }
  }

  backend "s3" {
    bucket = "bucket-s3-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }

}


