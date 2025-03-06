terraform {
  backend "s3" {
    bucket  = "tees3test232"   
    key     = "backend/terraform.tfstate"   
    region  = "us-east-1"
    encrypt = true  
  }
}
