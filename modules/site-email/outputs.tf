output "ses_verification_token" {
  value = aws_ses_domain_identity.domain_ses_identity.verification_token
}
