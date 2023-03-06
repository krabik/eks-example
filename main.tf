resource "aws_s3_bucket" "fb_logging" {
  bucket        = "${var.env_prefix}-fb-logging-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
  tags = {
    Name = "${var.env_prefix}-fb-logging-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
  }
}
