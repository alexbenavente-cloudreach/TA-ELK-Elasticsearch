terraform {
  backend "s3" {
    bucket         = "ta-challenge-elk-team-1"
    key            = "elk1-terraform-elasticsearch/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}
