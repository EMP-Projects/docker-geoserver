#!/bin/bash

echo -e "configure aws credentials"
aws configure set aws_access_key_id $AWS_ACCESS_KEY
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY

echo -e "copy s3 bucket"
aws s3 sync $AWS_S3_URL $GEOSERVER_DATA_DIR