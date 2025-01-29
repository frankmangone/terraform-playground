provider "aws" {
  region = "us-east-2"
  profile = "personal-terraform"  # Make sure this matches your intended AWS profile
}

# Add this data source to verify the account
data "aws_caller_identity" "current" {}

# Add an output to see account info
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}