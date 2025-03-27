resource "aws_s3_bucket" "storage" {
  bucket = "my-tf-test-bucket-${random_string.suffix.result}"  # Unique name
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Add a random suffix to make the bucket name unique
resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}
