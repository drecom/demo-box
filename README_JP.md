# Who Am I ?
[Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)用のツールボックスである。

# 利用方法
背景は[Terraform Workshop](https://git.drecom.jp/infrastructure/terraform-oss-aws)の方のREADMEにご参照ください
```
$ git clone ssh://git@git.drecom.jp:10022/infrastructure/tool-aws-oss.git
# AWS情報をセット
$ aws configure --profile terraform-onboarding
$ export AWS_DEFAULT_PROFILE=terraform-onboarding
```

## Packaging & Uploading lambda function
__workspace systemをapplyの前にこちらを実行してください__  

```
cd lambda
```

Shellスクリプト経由ので、lambda関数をS3バケットにアップロードできます。  
詳細は[lambda README](./lambda/README.md) にご参照頂ければと思います。

## sample-app
__workspace productionをapplyの前に、sample-appのREADMEをご一読ください__  

```
cd sample-app
```

言語別に、デプロイ可能のかんたんサンプルアプリを用意しました。  
詳細は[sample-app README](./sample-app/README.md)にご参照頂ければと思います。


