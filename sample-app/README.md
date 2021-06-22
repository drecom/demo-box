# Drecom Workshop Example
## How to use
It works with [drecom/terraform-onboarding](https://github.com/drecom/terraform-onboarding).  
You can build & push these example applications to AWS ECR.

## Prerequisite
- AWS account
- docker
- AWS ECR Repository

## Usage
```
$ export AWS_ACCESS_KEY=""
$ export AWS_SECRET_ACCESS_KEY=""
# After applied workspace system, you should get a URL called 'ecr_url's
# Just copy it to the path below
$ aws ecr get-login-password | docker login --username AWS --password-stdin <your-aws-acount>.dkr.ecr.<region>.amazonaws.com/<your ecr repository name>
> Login Succeeded

$ cd <Pick your favorite programming languages>
# tag needs to match AppRunner's configure
$ docker build -t <your-aws-acount>.dkr.ecr.<region>.amazonaws.com/<your ecr repository name>:release . 
$ docker push <your-aws-acount>.dkr.ecr.<region>.amazonaws.com/<your ecr repository name>:release
```