terraform {
  backend "s3" {
    bucket         = "alex-ilja-artur-tfstate-bucket"
    key            = "global/dev/terraform.tfstate"
    region         = "eu-central-1"

    dynamodb_table = "alex-ilja-artur-tfstate-locks"
    encrypt        = true
  }
}