#!/bin/bash
###########################################
# Author: Chandhra Sekhar
# Date: 24-Nov-2024
# Version: 1.0
# Description: This script reports AWS resource usage.
###########################################

# Enable debug mode
set -x

# List AWS S3 buckets
echo "Fetching list of S3 buckets..."
aws s3 ls

# List AWS EC2 instances
echo "Fetching list of EC2 instances..."
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# List AWS Lambda functions
echo "Fetching list of Lambda functions..."
aws lambda list-functions | jq -r '.Functions[].FunctionName'

