resource "aws_s3_bucket" "project-s3bucket" {
  ///change the name of the S3  bucket 
  bucket = "project-s3bucket"
  force_destroy = true

  tags = {
    Name = "project-s3bucket"
  }
}
