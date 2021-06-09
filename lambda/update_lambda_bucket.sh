#!/bin/bash

ASSET_DIR="assets"
TEMP_DIR="/tmp"
UPLOAD_REGION="ap-northeast-1"
UPLOAD_BUCKET="drecom-terraform-workshop"
UPLOAD_PATH=""
UPLOAD_FULL_PATH=""
UPLOAD_FILE_ALL="lambda.zip"
UPLOAD_FILE_MAIN="lambda-main.zip"
UPLOAD_FILE_LIB="lambda-lib.zip"

# set s3 path
if [ $# -eq 2 ]; then
  while getopts d:p: OPT
  do
    case $OPT in
        d ) UPLOAD_PATH="$OPTARG"
            echo "S3 bucket's full path set to [ s3://${UPLOAD_BUCKET}/${UPLOAD_PATH} ]" ;;
        p ) UPLOAD_FULL_PATH="$OPTARG"
            UPLOAD_PATH=`echo ${UPLOAD_FULL_PATH} | cut -d "/" -f 2`
            echo "S3 bucket's full path set to [ s3://${UPLOAD_BUCKET}/${UPLOAD_PATH} ]" ;;
        * ) echo "Usage:"
            echo "      $0 [-d <s3 bucket's path>] "
            echo "      $0 [-p <s3 bucket's full path>] "
            exit 1 ;;
    esac
  done
else
  echo "Usage:"
  echo "  $0 -d <s3 bucket's path>" 1>&2
  echo "  $0 -p <s3 bucket's full path>" 1>&2
  echo "Like: $0 -d `whoami`-lambda"
  echo "S3 bucket's full path need to match the <aws-s3-lambda-bucket-name> which outputted by terraform."
  exit 1
fi

# check current aws profile name
CURRENT_PROFILE=`aws configure list | grep profile | awk '{print $2}'`
echo "And current AWS profile is [ $CURRENT_PROFILE ] "
echo "Are they OK with you ? yes/no"
read INPUT
# get user confirm
if [ -z $INPUT ] ; then
  ConfirmExecution
elif [ $INPUT = 'y' ] || [ $INPUT = 'yes' ] ; then
  echo "Here we go..."
  # compression
  cd ${ASSET_DIR}
  zip -r ${TEMP_DIR}/${UPLOAD_FILE_ALL}  ./* > /dev/null
  zip -r ${TEMP_DIR}/${UPLOAD_FILE_LIB} ./python > /dev/null
  zip -r ${TEMP_DIR}/${UPLOAD_FILE_MAIN} ./* > /dev/null
  
  # transfer to s3 bucket
  aws s3 cp ${TEMP_DIR}/${UPLOAD_FILE_ALL}  s3://${UPLOAD_BUCKET}/${UPLOAD_PATH}/${UPLOAD_FILE_ALL}  --region ${UPLOAD_REGION}
  aws s3 cp ${TEMP_DIR}/${UPLOAD_FILE_MAIN} s3://${UPLOAD_BUCKET}/${UPLOAD_PATH}/${UPLOAD_FILE_MAIN} --region ${UPLOAD_REGION}
  aws s3 cp ${TEMP_DIR}/${UPLOAD_FILE_LIB}  s3://${UPLOAD_BUCKET}/${UPLOAD_PATH}/${UPLOAD_FILE_LIB}  --region ${UPLOAD_REGION}

else
  echo "Oops !"
  echo "Upload cancelled."
  exit 1
fi
