# create an S3 bucket to store the state file in
resource "aws_s3_bucket" "terraform-state-storage-s3" {
  bucket = "cadillac-burgess-terraform-state-bucket"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = "S3 Remote Terraform State Store"
  }
}