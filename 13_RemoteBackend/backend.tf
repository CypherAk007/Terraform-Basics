terraform {
  backend "s3" {
    bucket = "ak-remote-backend-2024"
    key="terraform/tfstate.tfstate"
    region = "us-east-1"
    access_key = "AKIATQWYEZX2QUP737BY"
    secret_key = "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"
  }
}