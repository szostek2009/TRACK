terragrunt = {
  terraform {
    source = "git::https://git/terraform/aws-s3-cloudfront-waf-tf.git?ref=1.0.0"
  }

  remote_state {
    backend = "local"
    config {
      path = "${get_env("TF_STATE_PREFIX", "")}terraform.tfstate"
    }
  }
}
