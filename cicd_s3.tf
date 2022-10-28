resource "aws_s3_bucket" "codepipeline_artifact" {
  bucket = "my-tf-artifact-bucket"

}

resource "aws_s3_bucket_acl" "artifact" {
  bucket = aws_s3_bucket.codepipeline_artifact.id
  acl    = "private"
}