resource "aws_s3_bucket" "tf-service-test" {
  bucket = "tf-service-test"

  tags = {
    Name        = "tf-service-test"
    Environment = "test"
  }
}

resource "aws_s3_bucket_acl" "tf-service-test" {
  bucket = aws_s3_bucket.tf-service-test.id
  acl    = "private"
}
