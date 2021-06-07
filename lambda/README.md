# Update lambda bucket
A lambda function uploader work with [Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)

## Packaging & Uploading lambda function
__Run this before you apply workspace system__
```
$ pwd
/Users/hoge/tool-aws-oss/lambda
$ aws configure --profile terraform-onboarding
$ export AWS_DEFAULT_PROFILE=terraform-onboarding
$ chmod +x update_lambda_bucket.sh
$ ./update_lambda_bucket.sh
```
