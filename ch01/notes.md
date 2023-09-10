### SSO support for aws and terraform

Use aws configure sso at the command line which will prompt you to provide the sso details. To refresh token please use aws sso login which should help you renew the token. Token lasts for 8 hours default and could be entended to a max 7 days.  
https://docs.aws.amazon.com/cli/latest/userguide/sso-configure-profile-token.html#sso-configure-profile-token-auto-sso