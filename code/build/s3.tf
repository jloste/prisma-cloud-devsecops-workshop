provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "526ba290-91ac-4e64-8355-87d2a12a11ce"
    git_commit           = "f71966c6d241ccd8fcdda1f0a97c212f6781d8fb"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-13 02:41:43"
    git_last_modified_by = "39181876+jloste@users.noreply.github.com"
    git_modifiers        = "39181876+jloste"
    git_org              = "jloste"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
