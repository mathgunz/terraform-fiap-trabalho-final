resource "aws_s3_bucket" "b" {
  bucket = "lab-fiap-trabalho-final"
  acl    = "private"

  tags = {
    Name        = "lab-fiap-trabalho-final"
    Environment = "admin"
  }
}