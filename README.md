# i18n
[日本語版はこちらになります](./README_JP.md)
# Who Am I ?
A toolbox work with [drecom/terraform-onboarding](https://github.com/drecom/terraform-onboarding)

# Getting Started
See [drecom/terraform-onboarding](https://github.com/drecom/terraform-onboarding)'s README.md for more information.
```
$ git clone git@github.com:drecom/demo-box.git
$ cd demo-box
# Setting your AWS configure first
$ aws configure --profile terraform-onboarding
$ export AWS_DEFAULT_PROFILE=terraform-onboarding
```


## Upload lambda function
__Run this before you apply workspace system__  

```
cd lambda
```

You can use the shell script to upload lambda function to s3 bucket.  
See [lambda README](./lambda/README.md) for more details.

## Sample-app
__Read sample-app's README.md before you apply workspace production__  

```
cd sample-app
```

You can use these example applications to quickly try out.  
See [sample-app README](./sample-app/README.md) for more details.
