terraform {
  backend "s3" {
    bucket = "w7-jb-terr-backend"
    key    = "terraform_backend/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
