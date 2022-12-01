resource "aws_s3_bucket" "Dev_Bucket" {
  bucket = "datawarhouse-vicky04"

  tags = {
    Name        = "OAT-Test"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.Dev_Bucket.id
  acl    = "private"
}