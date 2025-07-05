provider "aws" {
  region = "us-east-1"
  profile = "terraform"
}

resource "aws_dynamodb_table" "my_table" {
  name           = "my-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "user_id"

  attribute {
    name = "user_id"
    type = "S"
  }

  tags = {
    Environment = "test"
    Project     = "example"
  }
}