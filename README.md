# i18n
[日本語版はこちらになります](./README_JP.md)
# Who Am I ?
A toolbox work with [Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)

# Getting Started
See [Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)'s README.md for more information.
```
$ git clone ssh://git@git.drecom.jp:10022/infrastructure/tool-aws-oss.git
# Setting your AWS configure first
$ aws configure --profile terraform-onboarding
$ export AWS_DEFAULT_PROFILE=terraform-onboarding
```


## Upload lambda function
__Run this before you apply workspace system__  
You can use the shell script to upload lambda function to s3 bucket.  
See [lambda README](./lambda/README.md) for more details.

## Sample-app
__Read sample-app's README.md before you apply workspace production__  
You can use these example applications to quickly try out.  
See [sample-app README](./sample-app/README.md) for more details.
