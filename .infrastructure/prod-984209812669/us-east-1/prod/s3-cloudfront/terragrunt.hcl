terraform {
  source = "git::https://git.rockfin.com/terraform/aws-s3-cloudfront-waf-tf.git?ref=fix-log-encryption"
}

include {
  path = find_in_parent_folders()
}
