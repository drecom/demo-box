# Drecom Workshop Example
## How to use
It works with [Terraform Onboarding](https://git.drecom.jp/infrastructure/terraform-oss-aws).  
You can build & push these example applications to AWS ECR.

## Prerequisite
- AWS account
- docker
- AWS ECR Repository

## Usage
```
$ export AWS_ACCESS_KEY=""
$ export AWS_SECRET_ACCESS_KEY=""
$ aws ecr get-login-password | docker login --username AWS --password-stdin <your-aws-acount>.dkr.ecr.<region>.amazonaws.com/<your ecr repository name>

$ cd <Pick your favorite programming languages>
$ docker build -t <your-aws-acount>.dkr.ecr.<region>.amazonaws.com/<your ecr repository name>:latest . 
$ docker push <your-aws-acount>.dkr.ecr.<region>.amazonaws.com/<your ecr repository name>:latest
```