terraform {
  source = "git::https://git.rockfin.com/terraform/aws-s3-cloudfront-waf-tf.git?ref=bucket-encryption"
}

include {
  path = find_in_parent_folders()
}
