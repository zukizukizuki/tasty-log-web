terraform {
    required_version = "~> 1.5.4"
  backend "s3" {
    bucket = "zukkie-terraform-state"
    key    = "tastylog.state"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
