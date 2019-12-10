terraform {
  source = "git::https://git.rockfin.com/terraform/aws-s3-cloudfront-waf-tf.git?ref=3.1.1"
}

include {
  path = find_in_parent_folders()
}
