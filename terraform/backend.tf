terraform {
  backend "s3" {
    bucket       = "enterprise-tf-state-demo"
    key          = "data-platform/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}