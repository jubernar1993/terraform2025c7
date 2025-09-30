resource "aws_vpc" "geico" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  region               = "us-east-1"
  enable_dns_hostnames = true

  tags = {
    Name = "Geico_APP"
  }
}