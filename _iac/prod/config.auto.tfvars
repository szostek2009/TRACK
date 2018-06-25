aws_region     = "us-east-1"
aws_account_id = "984209812669"

website_domain_name = "trac.foc.zone"

create_route53_entry = true
hosted_zone_id       = "Z9U7UZ452YCG6"

acm_certificate_domain_name = "trac.foc.zone"
http_or_https_mode          = "redirect-to-https"
cloudfront_price_class      = "PriceClass_100"

index_document = "index.html"
error_document = "error.html"

allowed_external_ips = [
  "12.165.188.0/24",
  "162.252.136.0/21",
  "34.237.27.18/32"
]

hal_deployment_role_name         = "role/Hal-Manual-Deployment-User"
force_destroy_access_logs_bucket = true
