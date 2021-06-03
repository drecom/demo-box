# Who Am I ?
[Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)と合わせて公開予定のアイテム集

# 利用方法
背景は[Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)の方のREADMEにご参照ください
```
$ git clone ssh://git@git.drecom.jp:10022/infrastructure/tool-aws-oss.git
```

## Packaging & Uploading lambda function
```
$ aws configure --profile terraform-onboarding
$ export AWS_DEFAULT_PROFILE=terraform-onboarding
$ chmod +x update_lambda_bucket.sh
$ ./update_lambda_bucket.sh
```

## sample-app
言語別に、デプロイ可能のかんたんサンプルアプリを用意しました

