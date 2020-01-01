{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowPublicAccessToAllObjects",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${website_domain_name}/*"
        }
    ]
}