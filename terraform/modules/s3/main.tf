resource "aws_s3_bucket" "data_lake" {
  bucket = "enterprise-data-lake-demo"
  force_destroy = true
}
 
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.data_lake.id
 
  versioning_configuration {
    status = "Enabled"
  }
}
