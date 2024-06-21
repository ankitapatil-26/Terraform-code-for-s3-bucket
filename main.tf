resource "aws_s3_bucket" "s3-bucket" {
  
  bucket = "s3-bucket-store-statefile"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "my_state_table"{
    name = "basic-dynamo-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}
