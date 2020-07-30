# ----------------------------------------------------------------------------------------------------------------------
# AWS Required Variables
# ----------------------------------------------------------------------------------------------------------------------

aws_region     = "us-east-1"
aws_account_id = "984209812669"

# ----------------------------------------------------------------------------------------------------------------------
# Standard Module Required Variables
# ----------------------------------------------------------------------------------------------------------------------

app_id           = "206916"
application_name = "trac"
environment      = "prod"

development_team_email        = "stevekluck@quickenloans.com"
infrastructure_team_email     = "itteamengineeringexperience@quickenloans.com"
infrastructure_engineer_email = "stevekluck@quickenloans.com"

app_tags = {
  hal-app-id = "671"
}

# ----------------------------------------------------------------------------------------------------------------------
# Access Logs
# ----------------------------------------------------------------------------------------------------------------------

enable_access_logs_encryption       = true
access_logs_expiration_time_in_days = 90
force_destroy_access_logs_bucket    = true

# ----------------------------------------------------------------------------------------------------------------------
# Module Variables
# ----------------------------------------------------------------------------------------------------------------------

website_domain_name  = "trac.foc.zone"
hosted_zone_name     = "trac.foc.zone"
create_route53_entry = true

acm_certificate_domain_name = "trac.foc.zone"
http_or_https_mode          = "redirect-to-https"
cloudfront_price_class      = "PriceClass_100"

min_ttl     = 0
max_ttl     = 60
default_ttl = 30

is_ipv6_enabled                       = false
minimum_https_protocol_version_policy = "TLSv1.2_2018"
use_canonical_iam_user_for_s3         = false

allowed_external_ips = [
  "12.165.188.0/24",
  "162.252.136.0/21",
  "34.237.27.18/32",
]

index_document     = "index.html"
error_document_404 = "error.html"
error_document_500 = "error.html"

hal_deployment_role_name = "Hal-Manual-Deployment-User"
