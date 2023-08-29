resource "aws_s3_bucket" "test" {
  bucket        = "test"
  acl           = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
}
