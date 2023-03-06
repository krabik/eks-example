resource "aws_s3_bucket" "fb_logging" {
  bucket        = "${var.env_prefix}-fb-logging-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
  force_destroy = var.S3forceDestroy
  tags = {
    Name = "${var.env_prefix}-fb-logging-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
  }
}
