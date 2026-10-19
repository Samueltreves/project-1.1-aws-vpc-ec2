terraform {
  backend "s3" {
    bucket         = "devops-portfolio-tfstate-samuel-2026"
    key            = "projects/project-1.1/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "devops-portfolio-locks"
    encrypt        = true
    profile        = "devops-portfolio"
  }
}
