{
  "Version": "2012-10-17",
  "Id": "GiveSESPermissionToWriteEmail",
  "Statement": [
    {
      "Sid": "GiveSESPermissionToWriteEmail",
      "Effect": "Allow",
      "Principal": {
        "Service": "ses.amazonaws.com"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::${email_bucket_name}/*",
      "Condition": {
        "StringEquals": {
          "aws:Referer": "123456789012"
        }
      }
    }
  ]
}