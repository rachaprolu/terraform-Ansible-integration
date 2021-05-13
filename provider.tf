provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA43KVDCQAWPATKIK2"
  secret_key = "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"
}
#vpc creation

resource "aws_vpc" "terraformmain" {
    cidr_block ="10.1.0.0/16"
   #### this 2 true values are for use the internal vpc dns resolution
    enable_dns_support = true
    enable_dns_hostnames = true
  tags = {
    Name = "terraform VPC"
  }
}
