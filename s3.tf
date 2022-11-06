resource "aws_s3_bucket" "bucket" {
  bucket = "valdrin-training-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
